
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ctrl ) (TYPE_1__*,int ,int) ;} ;
struct sfax_hw {int name; TYPE_1__ isac; } ;
struct mISDN_ctrl_req {int op; int channel; } ;


 int EINVAL ;
 int HW_TESTLOOP ;


 int pr_info (char*,int ,int) ;
 int stub1 (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
channel_ctrl(struct sfax_hw *sf, struct mISDN_ctrl_req *cq)
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
  ret = sf->isac.ctrl(&sf->isac, HW_TESTLOOP, cq->channel);
  break;
 default:
  pr_info("%s: unknown Op %x\n", sf->name, cq->op);
  ret = -EINVAL;
  break;
 }
 return ret;
}
