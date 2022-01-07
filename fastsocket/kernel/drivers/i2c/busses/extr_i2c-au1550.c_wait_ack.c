
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct TYPE_2__ {int psc_smbevnt; } ;
typedef TYPE_1__ psc_smb_t ;


 int ETIMEDOUT ;
 int PSC_SMBEVNT_AL ;
 int PSC_SMBEVNT_AN ;
 int PSC_SMBEVNT_DN ;
 int au_sync () ;
 scalar_t__ wait_xfer_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int
wait_ack(struct i2c_au1550_data *adap)
{
 u32 stat;
 volatile psc_smb_t *sp;

 if (wait_xfer_done(adap))
  return -ETIMEDOUT;

 sp = (volatile psc_smb_t *)(adap->psc_base);

 stat = sp->psc_smbevnt;
 au_sync();

 if ((stat & (PSC_SMBEVNT_DN | PSC_SMBEVNT_AN | PSC_SMBEVNT_AL)) != 0)
  return -ETIMEDOUT;

 return 0;
}
