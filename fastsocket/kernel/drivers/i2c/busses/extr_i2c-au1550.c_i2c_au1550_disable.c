
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct TYPE_2__ {int psc_ctrl; scalar_t__ psc_smbcfg; } ;
typedef TYPE_1__ psc_smb_t ;


 int PSC_CTRL_DISABLE ;
 int au_sync () ;

__attribute__((used)) static void i2c_au1550_disable(struct i2c_au1550_data *priv)
{
 volatile psc_smb_t *sp = (volatile psc_smb_t *)priv->psc_base;

 sp->psc_smbcfg = 0;
 sp->psc_ctrl = PSC_CTRL_DISABLE;
 au_sync();
}
