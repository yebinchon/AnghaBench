
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mISDN_ctrl_req {int op; int channel; } ;
struct ipac_hw {int (* ctrl ) (struct ipac_hw*,int ,int) ;int name; } ;


 int EINVAL ;
 int HW_TESTLOOP ;


 int pr_info (char*,int ,int) ;
 int stub1 (struct ipac_hw*,int ,int) ;

__attribute__((used)) static int
channel_ctrl(struct ipac_hw *ipac, struct mISDN_ctrl_req *cq)
{
 int ret = 0;

 switch (cq->op) {
 case 129:
  cq->op = 128;
  break;
 case 128:

  if (cq->channel < 0 || cq->channel > 3) {
   ret = -EINVAL;
   break;
  }
  ret = ipac->ctrl(ipac, HW_TESTLOOP, cq->channel);
  break;
 default:
  pr_info("%s: unknown CTRL OP %x\n", ipac->name, cq->op);
  ret = -EINVAL;
  break;
 }
 return ret;
}
