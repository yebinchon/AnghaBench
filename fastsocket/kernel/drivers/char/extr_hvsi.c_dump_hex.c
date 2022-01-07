
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ isprint (int const) ;
 int printk (char*,...) ;

__attribute__((used)) static void dump_hex(const uint8_t *data, int len)
{
 int i;

 printk("    ");
 for (i=0; i < len; i++)
  printk("%.2x", data[i]);

 printk("\n    ");
 for (i=0; i < len; i++) {
  if (isprint(data[i]))
   printk("%c", data[i]);
  else
   printk(".");
 }
 printk("\n");
}
