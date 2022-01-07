
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_option {unsigned int flags; unsigned long type; int list; } ;
struct pnp_dev {int options; } ;


 int GFP_KERNEL ;
 struct pnp_option* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

struct pnp_option *pnp_build_option(struct pnp_dev *dev, unsigned long type,
        unsigned int option_flags)
{
 struct pnp_option *option;

 option = kzalloc(sizeof(struct pnp_option), GFP_KERNEL);
 if (!option)
  return ((void*)0);

 option->flags = option_flags;
 option->type = type;

 list_add_tail(&option->list, &dev->options);
 return option;
}
