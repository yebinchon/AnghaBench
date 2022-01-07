
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct c2_dev {int req_vq_wo; int ** qptr_array; } ;


 int c2_ae_event (struct c2_dev*,size_t) ;
 int c2_cq_event (struct c2_dev*,size_t) ;
 int handle_vq (struct c2_dev*,int) ;
 int pr_debug (char*,size_t) ;
 int wake_up (int *) ;

__attribute__((used)) static void handle_mq(struct c2_dev *c2dev, u32 mq_index)
{
 if (c2dev->qptr_array[mq_index] == ((void*)0)) {
  pr_debug("handle_mq: stray activity for mq_index=%d\n",
    mq_index);
  return;
 }

 switch (mq_index) {
 case (0):
  wake_up(&c2dev->req_vq_wo);
  break;
 case (1):
  handle_vq(c2dev, mq_index);
  break;
 case (2):






  handle_vq(c2dev, 1);

  c2_ae_event(c2dev, mq_index);
  break;
 default:
  c2_cq_event(c2dev, mq_index);
  break;
 }

 return;
}
