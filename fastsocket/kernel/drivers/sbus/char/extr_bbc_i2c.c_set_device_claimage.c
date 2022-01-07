
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {int dummy; } ;
struct bbc_i2c_bus {TYPE_1__* devs; } ;
struct TYPE_2__ {int client_claimed; struct of_device* device; } ;


 int NUM_CHILDREN ;

__attribute__((used)) static void set_device_claimage(struct bbc_i2c_bus *bp, struct of_device *op, int val)
{
 int i;

 for (i = 0; i < NUM_CHILDREN; i++) {
  if (bp->devs[i].device == op) {
   bp->devs[i].client_claimed = val;
   return;
  }
 }
}
