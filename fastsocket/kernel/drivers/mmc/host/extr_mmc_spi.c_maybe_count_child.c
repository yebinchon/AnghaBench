
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ bus; } ;
struct count_children {scalar_t__ bus; scalar_t__ n; } ;


 int EBUSY ;

__attribute__((used)) static int maybe_count_child(struct device *dev, void *c)
{
 struct count_children *ccp = c;

 if (dev->bus == ccp->bus) {
  if (ccp->n)
   return -EBUSY;
  ccp->n++;
 }
 return 0;
}
