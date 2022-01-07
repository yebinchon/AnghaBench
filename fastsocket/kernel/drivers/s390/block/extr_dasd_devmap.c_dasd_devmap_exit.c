
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dasd_forget_ranges () ;

void
dasd_devmap_exit(void)
{
 dasd_forget_ranges();
}
