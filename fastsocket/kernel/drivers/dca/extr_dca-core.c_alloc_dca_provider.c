
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dca_provider {struct dca_ops* ops; } ;
struct dca_ops {int dummy; } ;


 int GFP_KERNEL ;
 struct dca_provider* kzalloc (int,int ) ;

struct dca_provider *alloc_dca_provider(struct dca_ops *ops, int priv_size)
{
 struct dca_provider *dca;
 int alloc_size;

 alloc_size = (sizeof(*dca) + priv_size);
 dca = kzalloc(alloc_size, GFP_KERNEL);
 if (!dca)
  return ((void*)0);
 dca->ops = ops;

 return dca;
}
