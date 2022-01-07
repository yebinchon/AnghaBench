
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int dummy; } ;
struct sm_disk {struct dm_space_map sm; int ll; scalar_t__ nr_allocated_this_transaction; scalar_t__ begin; } ;
struct dm_transaction_manager {int dummy; } ;


 int ENOMEM ;
 struct dm_space_map* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct sm_disk*) ;
 struct sm_disk* kmalloc (int,int ) ;
 int memcpy (struct dm_space_map*,int *,int) ;
 int ops ;
 int sm_disk_commit (struct dm_space_map*) ;
 int sm_ll_open_disk (int *,struct dm_transaction_manager*,void*,size_t) ;

struct dm_space_map *dm_sm_disk_open(struct dm_transaction_manager *tm,
         void *root_le, size_t len)
{
 int r;
 struct sm_disk *smd;

 smd = kmalloc(sizeof(*smd), GFP_KERNEL);
 if (!smd)
  return ERR_PTR(-ENOMEM);

 smd->begin = 0;
 smd->nr_allocated_this_transaction = 0;
 memcpy(&smd->sm, &ops, sizeof(smd->sm));

 r = sm_ll_open_disk(&smd->ll, tm, root_le, len);
 if (r)
  goto bad;

 r = sm_disk_commit(&smd->sm);
 if (r)
  goto bad;

 return &smd->sm;

bad:
 kfree(smd);
 return ERR_PTR(r);
}
