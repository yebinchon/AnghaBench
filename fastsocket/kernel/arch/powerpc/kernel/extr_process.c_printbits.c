
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regbit {int bit; int name; } ;


 int printk (char*,...) ;

__attribute__((used)) static void printbits(unsigned long val, struct regbit *bits)
{
 const char *sep = "";

 printk("<");
 for (; bits->bit; ++bits)
  if (val & bits->bit) {
   printk("%s%s", sep, bits->name);
   sep = ",";
  }
 printk(">");
}
