
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ check_dev (struct device*) ;
 int print_parisc_device (struct parisc_device*) ;
 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static int print_one_device(struct device * dev, void * data)
{
 struct parisc_device * pdev = to_parisc_device(dev);

 if (check_dev(dev))
  print_parisc_device(pdev);
 return 0;
}
