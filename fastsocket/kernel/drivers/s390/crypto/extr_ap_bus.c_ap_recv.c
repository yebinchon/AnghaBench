
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; int queue_empty; } ;
typedef int ap_qid_t ;





 int EBUSY ;
 int ENODEV ;
 int ENOENT ;
 struct ap_queue_status __ap_recv (int ,unsigned long long*,void*,size_t) ;

int ap_recv(ap_qid_t qid, unsigned long long *psmid, void *msg, size_t length)
{
 struct ap_queue_status status;

 status = __ap_recv(qid, psmid, msg, length);
 switch (status.response_code) {
 case 130:
  return 0;
 case 129:
  if (status.queue_empty)
   return -ENOENT;
  return -EBUSY;
 case 128:
  return -EBUSY;
 default:
  return -ENODEV;
 }
}
