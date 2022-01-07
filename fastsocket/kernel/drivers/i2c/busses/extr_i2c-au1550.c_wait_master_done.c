
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_au1550_data {int xfer_timeout; scalar_t__ psc_base; } ;
struct TYPE_2__ {int psc_smbevnt; } ;
typedef TYPE_1__ psc_smb_t ;


 int ETIMEDOUT ;
 int PSC_SMBEVNT_MD ;
 int au_sync () ;
 int udelay (int) ;

__attribute__((used)) static int
wait_master_done(struct i2c_au1550_data *adap)
{
 u32 stat;
 int i;
 volatile psc_smb_t *sp;

 sp = (volatile psc_smb_t *)(adap->psc_base);



 for (i = 0; i < adap->xfer_timeout; i++) {
  stat = sp->psc_smbevnt;
  au_sync();
  if ((stat & PSC_SMBEVNT_MD) != 0)
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
