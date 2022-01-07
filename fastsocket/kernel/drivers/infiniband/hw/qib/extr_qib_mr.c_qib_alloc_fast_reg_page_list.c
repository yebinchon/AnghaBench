
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_fast_reg_page_list {void* page_list; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_fast_reg_page_list* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int kfree (struct ib_fast_reg_page_list*) ;
 void* kzalloc (unsigned int,int ) ;

struct ib_fast_reg_page_list *
qib_alloc_fast_reg_page_list(struct ib_device *ibdev, int page_list_len)
{
 unsigned size = page_list_len * sizeof(u64);
 struct ib_fast_reg_page_list *pl;

 if (size > PAGE_SIZE)
  return ERR_PTR(-EINVAL);

 pl = kzalloc(sizeof *pl, GFP_KERNEL);
 if (!pl)
  return ERR_PTR(-ENOMEM);

 pl->page_list = kzalloc(size, GFP_KERNEL);
 if (!pl->page_list)
  goto err_free;

 return pl;

err_free:
 kfree(pl);
 return ERR_PTR(-ENOMEM);
}
