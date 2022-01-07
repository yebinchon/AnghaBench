
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct TYPE_3__ {char const* name; } ;



__attribute__((used)) static inline const char * pcid_name (struct pci_dev *pdev)
{
 if (pdev && pdev->dev.driver)
  return pdev->dev.driver->name;
 return "";
}
