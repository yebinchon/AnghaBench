
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adb_request {int* data; int nbytes; int complete; int reply_len; int * reply; } ;
struct TYPE_2__ {int handler_id; int original_address; } ;



 int EINVAL ;
 TYPE_1__* adb_handler ;
 int adb_handler_mutex ;
 int adb_write_done (struct adb_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
do_adb_query(struct adb_request *req)
{
 int ret = -EINVAL;

 switch(req->data[1])
 {
 case 128:
  if (req->nbytes < 3)
   break;
  mutex_lock(&adb_handler_mutex);
  req->reply[0] = adb_handler[req->data[2]].original_address;
  req->reply[1] = adb_handler[req->data[2]].handler_id;
  mutex_unlock(&adb_handler_mutex);
  req->complete = 1;
  req->reply_len = 2;
  adb_write_done(req);
  ret = 0;
  break;
 }
 return ret;
}
