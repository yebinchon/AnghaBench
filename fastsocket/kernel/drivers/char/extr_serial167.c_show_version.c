
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*) ;

__attribute__((used)) static void show_version(void)
{
 printk("MVME166/167 cd2401 driver\n");
}
