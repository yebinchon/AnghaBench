
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct TYPE_9__ {TYPE_1__ dev; TYPE_3__* algo_data; int name; } ;
struct TYPE_8__ {struct zoran* data; } ;
struct zoran {TYPE_4__ i2c_adapter; TYPE_2__* pci_dev; TYPE_3__ i2c_algo; int v4l2_dev; } ;
struct i2c_algo_bit_data {int dummy; } ;
struct TYPE_7__ {int dev; } ;


 int ZR_DEVNAME (struct zoran*) ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,int *) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int strlcpy (int ,int ,int) ;
 int zoran_i2c_bit_data_template ;

__attribute__((used)) static int
zoran_register_i2c (struct zoran *zr)
{
 memcpy(&zr->i2c_algo, &zoran_i2c_bit_data_template,
        sizeof(struct i2c_algo_bit_data));
 zr->i2c_algo.data = zr;
 strlcpy(zr->i2c_adapter.name, ZR_DEVNAME(zr),
  sizeof(zr->i2c_adapter.name));
 i2c_set_adapdata(&zr->i2c_adapter, &zr->v4l2_dev);
 zr->i2c_adapter.algo_data = &zr->i2c_algo;
 zr->i2c_adapter.dev.parent = &zr->pci_dev->dev;
 return i2c_bit_add_bus(&zr->i2c_adapter);
}
