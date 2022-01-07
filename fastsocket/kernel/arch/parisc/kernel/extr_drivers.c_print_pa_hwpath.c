
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct parisc_device {int hw_path; TYPE_1__ dev; } ;
struct hardware_path {int mod; } ;


 int get_node_path (int ,struct hardware_path*) ;
 char* print_hwpath (struct hardware_path*,char*) ;

char *print_pa_hwpath(struct parisc_device *dev, char *output)
{
 struct hardware_path path;

 get_node_path(dev->dev.parent, &path);
 path.mod = dev->hw_path;
 return print_hwpath(&path, output);
}
