
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {struct hermes hw; } ;
struct hermes_idstring {int len; int val; } ;
typedef unsigned char s32 ;
typedef int list ;
struct TYPE_2__ {int (* read_ltv ) (struct hermes*,int ,int ,int,int *,struct hermes_idstring*) ;} ;


 int EBUSY ;
 int HERMES_RID_SUPPORTEDDATARATES ;
 int USER_BAP ;
 int le16_to_cpu (int ) ;
 int min (int,int) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 int stub1 (struct hermes*,int ,int ,int,int *,struct hermes_idstring*) ;

int orinoco_hw_get_bitratelist(struct orinoco_private *priv,
          int *numrates, s32 *rates, int max)
{
 struct hermes *hw = &priv->hw;
 struct hermes_idstring list;
 unsigned char *p = (unsigned char *)&list.val;
 int err = 0;
 int num;
 int i;
 unsigned long flags;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 err = hw->ops->read_ltv(hw, USER_BAP, HERMES_RID_SUPPORTEDDATARATES,
    sizeof(list), ((void*)0), &list);
 orinoco_unlock(priv, &flags);

 if (err)
  return err;

 num = le16_to_cpu(list.len);
 *numrates = num;
 num = min(num, max);

 for (i = 0; i < num; i++)
  rates[i] = (p[i] & 0x7f) * 500000;

 return 0;
}
