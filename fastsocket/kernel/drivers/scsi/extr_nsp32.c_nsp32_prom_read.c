
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsp32_hw_data ;


 int nsp32_prom_read_bit (int *) ;
 int nsp32_prom_start (int *) ;
 int nsp32_prom_stop (int *) ;
 int nsp32_prom_write_bit (int *,int) ;

__attribute__((used)) static int nsp32_prom_read(nsp32_hw_data *data, int romaddr)
{
 int i, val;


 nsp32_prom_start(data);


 nsp32_prom_write_bit(data, 1);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 1);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 0);


 nsp32_prom_write_bit(data, 0);


 nsp32_prom_write_bit(data, 0);


 for (i = 7; i >= 0; i--) {
  nsp32_prom_write_bit(data, ((romaddr >> i) & 1));
 }


 nsp32_prom_write_bit(data, 0);


 nsp32_prom_start(data);


 nsp32_prom_write_bit(data, 1);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 1);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 0);
 nsp32_prom_write_bit(data, 0);


 nsp32_prom_write_bit(data, 1);


 nsp32_prom_write_bit(data, 0);


 val = 0;
 for (i = 7; i >= 0; i--) {
  val += (nsp32_prom_read_bit(data) << i);
 }


 nsp32_prom_write_bit(data, 1);


 nsp32_prom_stop(data);

 return val;
}
