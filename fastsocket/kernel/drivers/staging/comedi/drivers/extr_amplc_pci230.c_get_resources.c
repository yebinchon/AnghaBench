
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned char* res_owner; int res_spinlock; } ;


 unsigned int NUM_RESOURCES ;
 unsigned char OWNER_NONE ;
 TYPE_1__* devpriv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_resources(struct comedi_device *dev, unsigned int res_mask,
    unsigned char owner)
{
 int ok;
 unsigned int i;
 unsigned int b;
 unsigned int claimed;
 unsigned long irqflags;

 ok = 1;
 claimed = 0;
 spin_lock_irqsave(&devpriv->res_spinlock, irqflags);
 for (b = 1, i = 0; (i < NUM_RESOURCES)
      && (res_mask != 0); b <<= 1, i++) {
  if ((res_mask & b) != 0) {
   res_mask &= ~b;
   if (devpriv->res_owner[i] == OWNER_NONE) {
    devpriv->res_owner[i] = owner;
    claimed |= b;
   } else if (devpriv->res_owner[i] != owner) {
    for (b = 1, i = 0; claimed != 0; b <<= 1, i++) {
     if ((claimed & b) != 0) {
      devpriv->res_owner[i]
          = OWNER_NONE;
      claimed &= ~b;
     }
    }
    ok = 0;
    break;
   }
  }
 }
 spin_unlock_irqrestore(&devpriv->res_spinlock, irqflags);
 return ok;
}
