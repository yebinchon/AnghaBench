
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int flags; scalar_t__ len; int buf; int addr; } ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct i2c_adapter {struct i2c_au1550_data* algo_data; } ;
struct TYPE_2__ {int psc_ctrl; } ;
typedef TYPE_1__ psc_smb_t ;


 int I2C_M_RD ;
 int PSC_CTRL_ENABLE ;
 int PSC_CTRL_SUSPEND ;
 int au_sync () ;
 int do_address (struct i2c_au1550_data*,int ,int,int) ;
 int i2c_read (struct i2c_au1550_data*,int ,scalar_t__) ;
 int i2c_write (struct i2c_au1550_data*,int ,scalar_t__) ;

__attribute__((used)) static int
au1550_xfer(struct i2c_adapter *i2c_adap, struct i2c_msg *msgs, int num)
{
 struct i2c_au1550_data *adap = i2c_adap->algo_data;
 volatile psc_smb_t *sp = (volatile psc_smb_t *)adap->psc_base;
 struct i2c_msg *p;
 int i, err = 0;

 sp->psc_ctrl = PSC_CTRL_ENABLE;
 au_sync();

 for (i = 0; !err && i < num; i++) {
  p = &msgs[i];
  err = do_address(adap, p->addr, p->flags & I2C_M_RD,
     (p->len == 0));
  if (err || !p->len)
   continue;
  if (p->flags & I2C_M_RD)
   err = i2c_read(adap, p->buf, p->len);
  else
   err = i2c_write(adap, p->buf, p->len);
 }



 if (err == 0)
  err = num;

 sp->psc_ctrl = PSC_CTRL_SUSPEND;
 au_sync();

 return err;
}
