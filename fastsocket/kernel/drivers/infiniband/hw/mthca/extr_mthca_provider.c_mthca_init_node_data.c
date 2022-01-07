
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_guid; int * node_desc; } ;
struct mthca_dev {TYPE_1__ ib_dev; int rev_id; } ;
struct ib_smp {scalar_t__ data; int attr_id; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_SMP_ATTR_NODE_DESC ;
 int IB_SMP_ATTR_NODE_INFO ;
 int be32_to_cpup (int *) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int mthca_MAD_IFC (struct mthca_dev*,int,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static int mthca_init_node_data(struct mthca_dev *dev)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;

 in_mad = kzalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_NODE_DESC;

 err = mthca_MAD_IFC(dev, 1, 1,
       1, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 memcpy(dev->ib_dev.node_desc, out_mad->data, 64);

 in_mad->attr_id = IB_SMP_ATTR_NODE_INFO;

 err = mthca_MAD_IFC(dev, 1, 1,
       1, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 if (mthca_is_memfree(dev))
  dev->rev_id = be32_to_cpup((__be32 *) (out_mad->data + 32));
 memcpy(&dev->ib_dev.node_guid, out_mad->data + 12, 8);

out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
