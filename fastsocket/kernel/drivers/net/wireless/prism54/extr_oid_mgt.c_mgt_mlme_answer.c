
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ iw_mode; int mib_sem; scalar_t__* mib; } ;
typedef TYPE_1__ islpci_private ;


 scalar_t__ DOT11_MLME_INTERMEDIATE ;
 size_t DOT11_OID_MLMEAUTOLEVEL ;
 scalar_t__ IW_MODE_MASTER ;
 int down_read (int *) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int up_read (int *) ;

int
mgt_mlme_answer(islpci_private *priv)
{
 u32 mlmeautolevel;




 down_read(&priv->mib_sem);
 mlmeautolevel =
     le32_to_cpu(*(u32 *) priv->mib[DOT11_OID_MLMEAUTOLEVEL]);
 up_read(&priv->mib_sem);

 return ((priv->iw_mode == IW_MODE_MASTER) &&
  (mlmeautolevel >= DOT11_MLME_INTERMEDIATE));
}
