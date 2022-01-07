
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct parisc_device {TYPE_1__ dev; scalar_t__ hw_path; } ;
struct hardware_path {int* bc; } ;


 int dev_set_name (TYPE_1__*,char*) ;
 int get_node_path (int ,struct hardware_path*) ;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static void setup_bus_id(struct parisc_device *padev)
{
 struct hardware_path path;
 char name[20];
 char *output = name;
 int i;

 get_node_path(padev->dev.parent, &path);

 for (i = 0; i < 6; i++) {
  if (path.bc[i] == -1)
   continue;
  output += sprintf(output, "%u:", (unsigned char) path.bc[i]);
 }
 sprintf(output, "%u", (unsigned char) padev->hw_path);
 dev_set_name(&padev->dev, name);
}
