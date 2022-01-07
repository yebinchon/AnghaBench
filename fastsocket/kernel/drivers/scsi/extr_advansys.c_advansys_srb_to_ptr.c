
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct asc_dvc_var {size_t ptr_map_count; int ** ptr_map; } ;


 int ASC_DBG (int,char*,void*,size_t) ;
 int printk (char*,size_t,size_t) ;

__attribute__((used)) static void * advansys_srb_to_ptr(struct asc_dvc_var *asc_dvc, u32 srb)
{
 void *ptr;

 srb--;
 if (srb >= asc_dvc->ptr_map_count) {
  printk("advansys: bad SRB %u, max %u\n", srb,
       asc_dvc->ptr_map_count);
  return ((void*)0);
 }
 ptr = asc_dvc->ptr_map[srb];
 asc_dvc->ptr_map[srb] = ((void*)0);
 ASC_DBG(3, "Returning ptr %p from array offset %d\n", ptr, srb);
 return ptr;
}
