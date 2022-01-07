
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ide_driver {int version; } ;
struct device_driver {int name; } ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;
 struct ide_driver* to_ide_driver (struct device_driver*) ;

__attribute__((used)) static int proc_print_driver(struct device_driver *drv, void *data)
{
 struct ide_driver *ide_drv = to_ide_driver(drv);
 struct seq_file *s = data;

 seq_printf(s, "%s version %s\n", drv->name, ide_drv->version);

 return 0;
}
