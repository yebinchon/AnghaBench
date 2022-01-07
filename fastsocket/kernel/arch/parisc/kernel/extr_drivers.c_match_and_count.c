
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int dummy; } ;
struct match_count {int count; int driver; } ;
struct device {int dummy; } ;


 scalar_t__ check_dev (struct device*) ;
 scalar_t__ match_device (int ,struct parisc_device*) ;
 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static int match_and_count(struct device * dev, void * data)
{
 struct match_count * m = data;
 struct parisc_device * pdev = to_parisc_device(dev);

 if (check_dev(dev)) {
  if (match_device(m->driver, pdev))
   m->count++;
 }
 return 0;
}
