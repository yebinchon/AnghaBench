
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u32 ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct TYPE_2__ {unsigned char psc_smbtxrx; } ;
typedef TYPE_1__ psc_smb_t ;


 int EIO ;
 unsigned char PSC_SMBTXRX_STP ;
 int au_sync () ;
 scalar_t__ wait_for_rx_byte (struct i2c_au1550_data*,unsigned char*) ;
 scalar_t__ wait_master_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int
i2c_read(struct i2c_au1550_data *adap, unsigned char *buf,
      unsigned int len)
{
 int i;
 u32 data;
 volatile psc_smb_t *sp;

 if (len == 0)
  return 0;






 sp = (volatile psc_smb_t *)(adap->psc_base);

 i = 0;
 while (i < (len-1)) {
  sp->psc_smbtxrx = 0;
  au_sync();
  if (wait_for_rx_byte(adap, &data))
   return -EIO;

  buf[i] = data;
  i++;
 }



 sp->psc_smbtxrx = PSC_SMBTXRX_STP;
 au_sync();
 if (wait_master_done(adap))
  return -EIO;

 data = sp->psc_smbtxrx;
 au_sync();
 buf[i] = data;
 return 0;
}
