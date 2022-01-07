
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int for_each_padev (int ,int *) ;
 int print_one_device ;

void print_parisc_devices(void)
{
 for_each_padev(print_one_device, ((void*)0));
}
