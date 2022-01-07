
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BOOT_ADDR ;
 int ENV_BOOTED_FILE ;
 long callback_getenv (int ,char*,int) ;
 long callback_read (long,unsigned long,void*,long) ;
 int srm_printk (char*,char*) ;

__attribute__((used)) static inline long load(long dev, unsigned long addr, unsigned long count)
{
 char bootfile[256];
 extern char _end;
 long result, boot_size = &_end - (char *) BOOT_ADDR;

 result = callback_getenv(ENV_BOOTED_FILE, bootfile, 255);
 if (result < 0)
  return result;
 result &= 255;
 bootfile[result] = '\0';
 if (result)
  srm_printk("Boot file specification (%s) not implemented\n",
         bootfile);
 return callback_read(dev, count, (void *)addr, boot_size/512 + 1);
}
