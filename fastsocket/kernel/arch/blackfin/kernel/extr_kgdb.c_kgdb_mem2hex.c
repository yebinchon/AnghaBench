
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfin_probe_kernel_read (char*,char*,int) ;
 char* pack_hex_byte (char*,char) ;

int kgdb_mem2hex(char *mem, char *buf, int count)
{
 char *tmp;
 int err;





 tmp = buf + count;

 err = bfin_probe_kernel_read(tmp, mem, count);
 if (!err) {
  while (count > 0) {
   buf = pack_hex_byte(buf, *tmp);
   tmp++;
   count--;
  }

  *buf = 0;
 }

 return err;
}
