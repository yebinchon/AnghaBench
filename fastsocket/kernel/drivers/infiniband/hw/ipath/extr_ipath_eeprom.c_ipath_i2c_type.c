
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_i2c_chain_type; } ;
struct i2c_chain_desc {scalar_t__ probe_dev; } ;


 int ARRAY_SIZE (struct i2c_chain_desc*) ;
 scalar_t__ IPATH_NO_DEV ;
 int eeprom_reset (struct ipath_devdata*) ;
 struct i2c_chain_desc* i2c_chains ;
 int i2c_probe (struct ipath_devdata*,scalar_t__) ;

__attribute__((used)) static struct i2c_chain_desc *ipath_i2c_type(struct ipath_devdata *dd)
{
 int idx;


 idx = dd->ipath_i2c_chain_type - 1;
 if (idx >= 0 && idx < (ARRAY_SIZE(i2c_chains) - 1))
  goto done;

 idx = 0;
 while (i2c_chains[idx].probe_dev != IPATH_NO_DEV) {

  if (!i2c_probe(dd, i2c_chains[idx].probe_dev))
   break;
  ++idx;
 }





 if (idx == 0)
  eeprom_reset(dd);

 if (i2c_chains[idx].probe_dev == IPATH_NO_DEV)
  idx = -1;
 else
  dd->ipath_i2c_chain_type = idx + 1;
done:
 return (idx >= 0) ? i2c_chains + idx : ((void*)0);
}
