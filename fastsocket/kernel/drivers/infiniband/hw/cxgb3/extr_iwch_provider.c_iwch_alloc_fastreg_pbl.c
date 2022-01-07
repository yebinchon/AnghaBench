
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_fast_reg_page_list {int max_page_list_len; int * page_list; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 struct ib_fast_reg_page_list* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct ib_fast_reg_page_list* kmalloc (int,int ) ;

__attribute__((used)) static struct ib_fast_reg_page_list *iwch_alloc_fastreg_pbl(
     struct ib_device *device,
     int page_list_len)
{
 struct ib_fast_reg_page_list *page_list;

 page_list = kmalloc(sizeof *page_list + page_list_len * sizeof(u64),
       GFP_KERNEL);
 if (!page_list)
  return ERR_PTR(-ENOMEM);

 page_list->page_list = (u64 *)(page_list + 1);
 page_list->max_page_list_len = page_list_len;

 return page_list;
}
