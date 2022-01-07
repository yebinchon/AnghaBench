
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {int dummy; } ;
struct bbc_i2c_bus {TYPE_1__* devs; } ;
struct TYPE_2__ {struct of_device* device; } ;


 int NUM_CHILDREN ;

struct of_device *bbc_i2c_getdev(struct bbc_i2c_bus *bp, int index)
{
 struct of_device *op = ((void*)0);
 int curidx = 0, i;

 for (i = 0; i < NUM_CHILDREN; i++) {
  if (!(op = bp->devs[i].device))
   break;
  if (curidx == index)
   goto out;
  op = ((void*)0);
  curidx++;
 }

out:
 if (curidx == index)
  return op;
 return ((void*)0);
}
