
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct pnp_option {TYPE_2__ u; int list; } ;
struct pnp_dev {int dev; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,unsigned long long,unsigned long long,int ) ;
 struct pnp_option* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pnp_option_set (struct pnp_option*) ;

__attribute__((used)) static void quirk_awe32_add_ports(struct pnp_dev *dev,
      struct pnp_option *option,
      unsigned int offset)
{
 struct pnp_option *new_option;

 new_option = kmalloc(sizeof(struct pnp_option), GFP_KERNEL);
 if (!new_option) {
  dev_err(&dev->dev, "couldn't add ioport region to option set "
   "%d\n", pnp_option_set(option));
  return;
 }

 *new_option = *option;
 new_option->u.port.min += offset;
 new_option->u.port.max += offset;
 list_add(&new_option->list, &option->list);

 dev_info(&dev->dev, "added ioport region %#llx-%#llx to set %d\n",
  (unsigned long long) new_option->u.port.min,
  (unsigned long long) new_option->u.port.max,
  pnp_option_set(option));
}
