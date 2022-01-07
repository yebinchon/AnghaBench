
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int finalize; int get_path; int del_node; int find_node_by_compatible; int find_node_by_prop_value; int create_node; int get_parent; int setprop; int getprop; int finddevice; } ;


 int EXPAND_GRANULARITY ;
 void* buf ;
 TYPE_1__ dt_ops ;
 int fatal (char*,...) ;
 void* fdt ;
 int fdt_open_into (void*,void*,int) ;
 int fdt_strerror (int) ;
 int fdt_totalsize (void*) ;
 int fdt_wrapper_create_node ;
 int fdt_wrapper_del_node ;
 int fdt_wrapper_finalize ;
 int fdt_wrapper_find_node_by_compatible ;
 int fdt_wrapper_find_node_by_prop_value ;
 int fdt_wrapper_finddevice ;
 int fdt_wrapper_get_parent ;
 int fdt_wrapper_get_path ;
 int fdt_wrapper_getprop ;
 int fdt_wrapper_setprop ;
 void* malloc (int) ;

void fdt_init(void *blob)
{
 int err;
 int bufsize;

 dt_ops.finddevice = fdt_wrapper_finddevice;
 dt_ops.getprop = fdt_wrapper_getprop;
 dt_ops.setprop = fdt_wrapper_setprop;
 dt_ops.get_parent = fdt_wrapper_get_parent;
 dt_ops.create_node = fdt_wrapper_create_node;
 dt_ops.find_node_by_prop_value = fdt_wrapper_find_node_by_prop_value;
 dt_ops.find_node_by_compatible = fdt_wrapper_find_node_by_compatible;
 dt_ops.del_node = fdt_wrapper_del_node;
 dt_ops.get_path = fdt_wrapper_get_path;
 dt_ops.finalize = fdt_wrapper_finalize;


 fdt = blob;
 bufsize = fdt_totalsize(fdt) + EXPAND_GRANULARITY;
 buf = malloc(bufsize);
 if(!buf)
  fatal("malloc failed. can't relocate the device tree\n\r");

 err = fdt_open_into(fdt, buf, bufsize);

 if (err != 0)
  fatal("fdt_init(): %s\n\r", fdt_strerror(err));

 fdt = buf;
}
