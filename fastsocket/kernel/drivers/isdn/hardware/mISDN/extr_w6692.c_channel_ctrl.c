
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w6692_hw {int name; } ;
struct mISDN_ctrl_req {int op; } ;


 int EINVAL ;

 int pr_info (char*,int ,int) ;

__attribute__((used)) static int
channel_ctrl(struct w6692_hw *card, struct mISDN_ctrl_req *cq)
{
 int ret = 0;

 switch (cq->op) {
 case 128:
  cq->op = 0;
  break;
 default:
  pr_info("%s: unknown CTRL OP %x\n", card->name, cq->op);
  ret = -EINVAL;
  break;
 }
 return ret;
}
