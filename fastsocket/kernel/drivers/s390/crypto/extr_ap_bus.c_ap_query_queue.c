
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
typedef int ap_qid_t ;


 int AP_MAX_RESET ;
 int BUG () ;
 int EBUSY ;
 int ENODEV ;
 struct ap_queue_status ap_test_queue (int ,int*,int*) ;
 int udelay (int) ;

__attribute__((used)) static int ap_query_queue(ap_qid_t qid, int *queue_depth, int *device_type)
{
 struct ap_queue_status status;
 int t_depth, t_device_type, rc, i;

 rc = -EBUSY;
 for (i = 0; i < AP_MAX_RESET; i++) {
  status = ap_test_queue(qid, &t_depth, &t_device_type);
  switch (status.response_code) {
  case 131:
   *queue_depth = t_depth + 1;
   *device_type = t_device_type;
   rc = 0;
   break;
  case 129:
   rc = -ENODEV;
   break;
  case 128:
   break;
  case 133:
   rc = -ENODEV;
   break;
  case 134:
   rc = -ENODEV;
   break;
  case 132:
   rc = -ENODEV;
   break;
  case 130:
   break;
  case 135:
   break;
  default:
   BUG();
  }
  if (rc != -EBUSY)
   break;
  if (i < AP_MAX_RESET - 1)
   udelay(5);
 }
 return rc;
}
