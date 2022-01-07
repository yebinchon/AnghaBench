
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tps_pmic {int io_lock; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tps_6507x_read (struct tps_pmic*,int ) ;

__attribute__((used)) static int tps_6507x_reg_read(struct tps_pmic *tps, u8 reg)
{
 int data;

 mutex_lock(&tps->io_lock);

 data = tps_6507x_read(tps, reg);
 if (data < 0)
  dev_err(&tps->client->dev, "Read from reg 0x%x failed\n", reg);

 mutex_unlock(&tps->io_lock);
 return data;
}
