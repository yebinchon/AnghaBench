
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int BaseAddress; } ;
typedef TYPE_1__ nsp32_hw_data ;


 int KERN_ERR ;
 int SDA ;
 int SERIAL_ROM_CTL ;
 int nsp32_index_read1 (int,int ) ;
 int nsp32_msg (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int nsp32_prom_get(nsp32_hw_data *data, int bit)
{
 int base = data->BaseAddress;
 int tmp, ret;

 if (bit != SDA) {
  nsp32_msg(KERN_ERR, "return value is not appropriate");
  return 0;
 }


 tmp = nsp32_index_read1(base, SERIAL_ROM_CTL) & bit;

 if (tmp == 0) {
  ret = 0;
 } else {
  ret = 1;
 }

 udelay(10);

 return ret;
}
