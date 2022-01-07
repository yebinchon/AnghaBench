
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;

__attribute__((used)) static void print_eth(char *add)
{
 int i;

 printk ("Dest  ");
 for (i = 0; i < 6; i++)
  printk(" %2.2X", (unsigned char) add[i]);
 printk ("\n");

 printk ("Source");
 for (i = 0; i < 6; i++)
  printk(" %2.2X", (unsigned char) add[i+6]);
 printk ("\n");

 printk ("type %2.2X%2.2X\n",
  (unsigned char) add[12], (unsigned char) add[13]);
}
