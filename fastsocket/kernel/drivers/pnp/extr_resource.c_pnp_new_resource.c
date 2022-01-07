
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_resource {int list; } ;
struct pnp_dev {int resources; } ;


 int GFP_KERNEL ;
 struct pnp_resource* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct pnp_resource *pnp_new_resource(struct pnp_dev *dev)
{
 struct pnp_resource *pnp_res;

 pnp_res = kzalloc(sizeof(struct pnp_resource), GFP_KERNEL);
 if (!pnp_res)
  return ((void*)0);

 list_add_tail(&pnp_res->list, &dev->resources);
 return pnp_res;
}
