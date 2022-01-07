
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfin_probe_kernel_write (char*,char*,int) ;
 int hex (int ) ;

int kgdb_hex2mem(char *buf, char *mem, int count)
{
 char *tmp_raw, *tmp_hex;





 tmp_raw = buf + count * 2;

 tmp_hex = tmp_raw - 1;
 while (tmp_hex >= buf) {
  tmp_raw--;
  *tmp_raw = hex(*tmp_hex--);
  *tmp_raw |= hex(*tmp_hex--) << 4;
 }

 return bfin_probe_kernel_write(mem, tmp_raw, count);
}
