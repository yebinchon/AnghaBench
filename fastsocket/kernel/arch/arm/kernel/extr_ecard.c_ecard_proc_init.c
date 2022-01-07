
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_ecard_proc_fops ;
 int proc_bus_ecard_dir ;
 int proc_create (char*,int ,int ,int *) ;
 int proc_mkdir (char*,int *) ;

__attribute__((used)) static void ecard_proc_init(void)
{
 proc_bus_ecard_dir = proc_mkdir("bus/ecard", ((void*)0));
 proc_create("devices", 0, proc_bus_ecard_dir, &bus_ecard_proc_fops);
}
