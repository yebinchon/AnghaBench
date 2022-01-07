
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
typedef int ap_qid_t ;






 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 struct ap_queue_status __ap_send (int ,unsigned long long,void*,size_t,int ) ;

int ap_send(ap_qid_t qid, unsigned long long psmid, void *msg, size_t length)
{
 struct ap_queue_status status;

 status = __ap_send(qid, psmid, msg, length, 0);
 switch (status.response_code) {
 case 131:
  return 0;
 case 130:
 case 128:
  return -EBUSY;
 case 129:
  return -EINVAL;
 default:
  return -ENODEV;
 }
}
