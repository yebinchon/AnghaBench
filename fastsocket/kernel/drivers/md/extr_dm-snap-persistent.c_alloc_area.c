
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pstore {void* area; void* zero_area; void* header_area; TYPE_1__* store; } ;
struct TYPE_2__ {size_t chunk_size; } ;


 int ENOMEM ;
 size_t SECTOR_SHIFT ;
 int vfree (void*) ;
 void* vmalloc (size_t) ;
 void* vzalloc (size_t) ;

__attribute__((used)) static int alloc_area(struct pstore *ps)
{
 int r = -ENOMEM;
 size_t len;

 len = ps->store->chunk_size << SECTOR_SHIFT;





 ps->area = vmalloc(len);
 if (!ps->area)
  goto err_area;

 ps->zero_area = vzalloc(len);
 if (!ps->zero_area)
  goto err_zero_area;

 ps->header_area = vmalloc(len);
 if (!ps->header_area)
  goto err_header_area;

 return 0;

err_header_area:
 vfree(ps->zero_area);

err_zero_area:
 vfree(ps->area);

err_area:
 return r;
}
