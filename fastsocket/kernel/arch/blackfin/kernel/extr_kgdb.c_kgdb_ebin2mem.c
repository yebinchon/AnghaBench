
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfin_probe_kernel_write (char*,char*,int) ;

int kgdb_ebin2mem(char *buf, char *mem, int count)
{
 char *tmp_old, *tmp_new;
 int size;

 tmp_old = tmp_new = buf;

 for (size = 0; size < count; ++size) {
  if (*tmp_old == 0x7d)
   *tmp_new = *(++tmp_old) ^ 0x20;
  else
   *tmp_new = *tmp_old;
  tmp_new++;
  tmp_old++;
 }

 return bfin_probe_kernel_write(mem, buf, count);
}
