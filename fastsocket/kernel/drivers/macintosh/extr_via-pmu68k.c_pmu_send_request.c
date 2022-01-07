
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; int* data; int nbytes; int* reply; int reply_len; int reply_expected; } ;



 int ADB_RET_OK ;





 int EINVAL ;
 int ENXIO ;
 int PMU_ADB_CMD ;

 int PMU_READ_NVRAM ;
 int PMU_READ_RTC ;
 int PMU_SET_RTC ;
 int PMU_WRITE_NVRAM ;
 int pmu_adb_flags ;
 int ** pmu_data_len ;
 int pmu_fully_inited ;
 int pmu_poll () ;
 int pmu_queue_request (struct adb_request*) ;

__attribute__((used)) static int
pmu_send_request(struct adb_request *req, int sync)
{
    int i, ret;

    if (!pmu_fully_inited)
    {
  req->complete = 1;
    return -ENXIO;
   }

    ret = -EINVAL;

    switch (req->data[0]) {
    case 128:
  for (i = 0; i < req->nbytes - 1; ++i)
   req->data[i] = req->data[i+1];
  --req->nbytes;
  if (pmu_data_len[req->data[0]][1] != 0) {
   req->reply[0] = ADB_RET_OK;
   req->reply_len = 1;
  } else
   req->reply_len = 0;
  ret = pmu_queue_request(req);
  break;
    case 131:
  switch (req->data[1]) {
  case 132:
   if (req->nbytes != 2)
    break;
   req->data[0] = PMU_READ_RTC;
   req->nbytes = 1;
   req->reply_len = 3;
   req->reply[0] = 131;
   req->reply[1] = 0;
   req->reply[2] = 132;
   ret = pmu_queue_request(req);
   break;
  case 129:
   if (req->nbytes != 6)
    break;
   req->data[0] = PMU_SET_RTC;
   req->nbytes = 5;
   for (i = 1; i <= 4; ++i)
    req->data[i] = req->data[i+1];
   req->reply_len = 3;
   req->reply[0] = 131;
   req->reply[1] = 0;
   req->reply[2] = 129;
   ret = pmu_queue_request(req);
   break;
  case 133:
   if (req->nbytes != 4)
    break;
   req->data[0] = PMU_READ_NVRAM;
   req->data[1] = req->data[2];
   req->data[2] = req->data[3];
   req->nbytes = 3;
   req->reply_len = 3;
   req->reply[0] = 131;
   req->reply[1] = 0;
   req->reply[2] = 133;
   ret = pmu_queue_request(req);
   break;
  case 130:
   if (req->nbytes != 5)
    break;
   req->data[0] = PMU_WRITE_NVRAM;
   req->data[1] = req->data[2];
   req->data[2] = req->data[3];
   req->data[3] = req->data[4];
   req->nbytes = 4;
   req->reply_len = 3;
   req->reply[0] = 131;
   req->reply[1] = 0;
   req->reply[2] = 130;
   ret = pmu_queue_request(req);
   break;
  }
  break;
    case 134:
  for (i = req->nbytes - 1; i > 1; --i)
   req->data[i+2] = req->data[i];
  req->data[3] = req->nbytes - 2;
  req->data[2] = pmu_adb_flags;

  req->data[0] = PMU_ADB_CMD;
  req->nbytes += 2;
  req->reply_expected = 1;
  req->reply_len = 0;
  ret = pmu_queue_request(req);
  break;
    }
    if (ret)
    {
     req->complete = 1;
     return ret;
    }

    if (sync) {
 while (!req->complete)
  pmu_poll();
    }

    return 0;
}
