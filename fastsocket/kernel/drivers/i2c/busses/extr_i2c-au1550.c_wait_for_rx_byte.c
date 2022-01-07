
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_au1550_data {int xfer_timeout; scalar_t__ psc_base; } ;
struct TYPE_2__ {int psc_smbstat; int psc_smbtxrx; } ;
typedef TYPE_1__ psc_smb_t ;


 int EIO ;
 int PSC_SMBSTAT_RE ;
 int au_sync () ;
 int udelay (int) ;
 scalar_t__ wait_xfer_done (struct i2c_au1550_data*) ;

__attribute__((used)) static u32
wait_for_rx_byte(struct i2c_au1550_data *adap, u32 *ret_data)
{
 int j;
 u32 data, stat;
 volatile psc_smb_t *sp;

 if (wait_xfer_done(adap))
  return -EIO;

 sp = (volatile psc_smb_t *)(adap->psc_base);

 j = adap->xfer_timeout * 100;
 do {
  j--;
  if (j <= 0)
   return -EIO;

  stat = sp->psc_smbstat;
  au_sync();
  if ((stat & PSC_SMBSTAT_RE) == 0)
   j = 0;
  else
   udelay(1);
 } while (j > 0);
 data = sp->psc_smbtxrx;
 au_sync();
 *ret_data = data;

 return 0;
}
