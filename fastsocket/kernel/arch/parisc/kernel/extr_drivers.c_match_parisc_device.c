
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {char hw_path; } ;
struct hardware_path {char mod; char* bc; } ;
struct device {int dummy; } ;


 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static int match_parisc_device(struct device *dev, int index,
  struct hardware_path *modpath)
{
 struct parisc_device *curr = to_parisc_device(dev);
 char id = (index == 6) ? modpath->mod : modpath->bc[index];

 return (curr->hw_path == id);
}
