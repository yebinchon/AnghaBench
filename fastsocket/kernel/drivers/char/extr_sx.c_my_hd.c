
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void my_hd(void *p, int len)
{
 int i, j, ch;
 unsigned char *addr = p;

 for (i = 0; i < len; i += 16) {
  printk("%p ", addr + i);
  for (j = 0; j < 16; j++) {
   printk("%02x %s", addr[j + i], (j == 7) ? " " : "");
  }
  for (j = 0; j < 16; j++) {
   ch = addr[j + i];
   printk("%c", (ch < 0x20) ? '.' :
     ((ch > 0x7f) ? '.' : ch));
  }
  printk("\n");
 }
}
