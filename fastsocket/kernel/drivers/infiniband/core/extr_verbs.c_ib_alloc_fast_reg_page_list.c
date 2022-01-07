
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_fast_reg_page_list {int max_page_list_len; struct ib_device* device; } ;
struct ib_device {struct ib_fast_reg_page_list* (* alloc_fast_reg_page_list ) (struct ib_device*,int) ;} ;


 int ENOSYS ;
 struct ib_fast_reg_page_list* ERR_PTR (int ) ;
 int IS_ERR (struct ib_fast_reg_page_list*) ;
 struct ib_fast_reg_page_list* stub1 (struct ib_device*,int) ;

struct ib_fast_reg_page_list *ib_alloc_fast_reg_page_list(struct ib_device *device,
         int max_page_list_len)
{
 struct ib_fast_reg_page_list *page_list;

 if (!device->alloc_fast_reg_page_list)
  return ERR_PTR(-ENOSYS);

 page_list = device->alloc_fast_reg_page_list(device, max_page_list_len);

 if (!IS_ERR(page_list)) {
  page_list->device = device;
  page_list->max_page_list_len = max_page_list_len;
 }

 return page_list;
}
