
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ resource_size_t ;


 int EBUSY ;
 int WARN_ON_ONCE (int ) ;
 int free_memtype (scalar_t__,scalar_t__) ;
 int iomem_map_sanity_check (scalar_t__,scalar_t__) ;
 int is_new_memtype_allowed (scalar_t__,scalar_t__,unsigned long,unsigned long) ;
 scalar_t__ kernel_map_sync_memtype (scalar_t__,scalar_t__,unsigned long) ;
 int reserve_memtype (scalar_t__,scalar_t__,unsigned long,unsigned long*) ;

int io_reserve_memtype(resource_size_t start, resource_size_t end,
   unsigned long *type)
{
 resource_size_t size = end - start;
 unsigned long req_type = *type;
 unsigned long new_type;
 int ret;

 WARN_ON_ONCE(iomem_map_sanity_check(start, size));

 ret = reserve_memtype(start, end, req_type, &new_type);
 if (ret)
  goto out_err;

 if (!is_new_memtype_allowed(start, size, req_type, new_type))
  goto out_free;

 if (kernel_map_sync_memtype(start, size, new_type) < 0)
  goto out_free;

 *type = new_type;
 return 0;

out_free:
 free_memtype(start, end);
 ret = -EBUSY;
out_err:
 return ret;
}
