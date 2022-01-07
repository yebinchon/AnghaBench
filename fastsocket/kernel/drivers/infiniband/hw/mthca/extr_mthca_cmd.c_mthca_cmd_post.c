
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int flags; int hcr_mutex; } ;
struct mthca_dev {TYPE_1__ cmd; } ;


 int MTHCA_CMD_POST_DOORBELLS ;
 scalar_t__ fw_cmd_doorbell ;
 int mmiowb () ;
 int mthca_cmd_post_dbell (struct mthca_dev*,int ,int ,int ,int ,int ,int ) ;
 int mthca_cmd_post_hcr (struct mthca_dev*,int ,int ,int ,int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mthca_cmd_post(struct mthca_dev *dev,
     u64 in_param,
     u64 out_param,
     u32 in_modifier,
     u8 op_modifier,
     u16 op,
     u16 token,
     int event)
{
 int err = 0;

 mutex_lock(&dev->cmd.hcr_mutex);

 if (event && dev->cmd.flags & MTHCA_CMD_POST_DOORBELLS && fw_cmd_doorbell)
  mthca_cmd_post_dbell(dev, in_param, out_param, in_modifier,
        op_modifier, op, token);
 else
  err = mthca_cmd_post_hcr(dev, in_param, out_param, in_modifier,
      op_modifier, op, token, event);





 mmiowb();

 mutex_unlock(&dev->cmd.hcr_mutex);
 return err;
}
