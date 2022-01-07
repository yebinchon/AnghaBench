
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s921_isdb_t {int (* i2c_read ) (int ,int) ;int priv_dev; } ;


 int mdelay (int) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static int s921_isdb_get_status(struct s921_isdb_t *dev, void *data) {
 unsigned int *ret = (unsigned int*)data;
 u8 ifagc_dt;
 u8 rfagc_dt;

 mdelay(10);
 ifagc_dt = dev->i2c_read(dev->priv_dev, 0x81);
 rfagc_dt = dev->i2c_read(dev->priv_dev, 0x82);
 if (rfagc_dt == 0x40) {
  *ret = 1;
 }
 return 0;
}
