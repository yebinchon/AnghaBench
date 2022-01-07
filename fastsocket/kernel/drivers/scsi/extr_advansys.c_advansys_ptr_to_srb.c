
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asc_dvc_var {int ptr_map_count; void** ptr_map; } ;


 int ASC_DBG (int,char*,void*,int) ;
 int BAD_SRB ;
 int GFP_ATOMIC ;
 void** krealloc (void**,int,int ) ;

__attribute__((used)) static u32 advansys_ptr_to_srb(struct asc_dvc_var *asc_dvc, void *ptr)
{
 int i;
 void **new_ptr;

 for (i = 0; i < asc_dvc->ptr_map_count; i++) {
  if (!asc_dvc->ptr_map[i])
   goto out;
 }

 if (asc_dvc->ptr_map_count == 0)
  asc_dvc->ptr_map_count = 1;
 else
  asc_dvc->ptr_map_count *= 2;

 new_ptr = krealloc(asc_dvc->ptr_map,
   asc_dvc->ptr_map_count * sizeof(void *), GFP_ATOMIC);
 if (!new_ptr)
  return BAD_SRB;
 asc_dvc->ptr_map = new_ptr;
 out:
 ASC_DBG(3, "Putting ptr %p into array offset %d\n", ptr, i);
 asc_dvc->ptr_map[i] = ptr;
 return i + 1;
}
