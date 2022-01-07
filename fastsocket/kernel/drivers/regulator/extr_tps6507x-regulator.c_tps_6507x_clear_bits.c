
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tps_pmic {int io_lock; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tps_6507x_read (struct tps_pmic*,int) ;
 int tps_6507x_write (struct tps_pmic*,int,int) ;

__attribute__((used)) static int tps_6507x_clear_bits(struct tps_pmic *tps, u8 reg, u8 mask)
{
 int err, data;

 mutex_lock(&tps->io_lock);

 data = tps_6507x_read(tps, reg);
 if (data < 0) {
  dev_err(&tps->client->dev, "Read from reg 0x%x failed\n", reg);
  err = data;
  goto out;
 }

 data &= ~mask;
 err = tps_6507x_write(tps, reg, data);
 if (err)
  dev_err(&tps->client->dev, "Write for reg 0x%x failed\n", reg);

out:
 mutex_unlock(&tps->io_lock);
 return err;
}
