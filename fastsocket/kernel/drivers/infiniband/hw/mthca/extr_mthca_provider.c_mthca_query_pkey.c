
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ib_smp {scalar_t__ data; int attr_mod; int attr_id; } ;
struct ib_device {int dummy; } ;
typedef int __be16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_SMP_ATTR_PKEY_TABLE ;
 int be16_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int mthca_MAD_IFC (int ,int,int,int ,int *,int *,struct ib_smp*,struct ib_smp*) ;
 int to_mdev (struct ib_device*) ;

__attribute__((used)) static int mthca_query_pkey(struct ib_device *ibdev,
       u8 port, u16 index, u16 *pkey)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;

 in_mad = kzalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_PKEY_TABLE;
 in_mad->attr_mod = cpu_to_be32(index / 32);

 err = mthca_MAD_IFC(to_mdev(ibdev), 1, 1,
       port, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 *pkey = be16_to_cpu(((__be16 *) out_mad->data)[index % 32]);

 out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
