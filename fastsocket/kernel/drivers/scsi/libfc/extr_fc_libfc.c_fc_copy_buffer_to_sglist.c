
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct scatterlist {size_t length; size_t offset; } ;
typedef enum km_type { ____Placeholder_km_type } km_type ;


 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 size_t crc32 (size_t,void*,size_t) ;
 void* kmap_atomic (scalar_t__,int) ;
 int kunmap_atomic (void*,int) ;
 int memcpy (char*,void*,size_t) ;
 size_t min (size_t,size_t) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ sg_page (struct scatterlist*) ;

u32 fc_copy_buffer_to_sglist(void *buf, size_t len,
        struct scatterlist *sg,
        u32 *nents, size_t *offset,
        enum km_type km_type, u32 *crc)
{
 size_t remaining = len;
 u32 copy_len = 0;

 while (remaining > 0 && sg) {
  size_t off, sg_bytes;
  void *page_addr;

  if (*offset >= sg->length) {




   if (!(*nents))
    break;
   --(*nents);
   *offset -= sg->length;
   sg = sg_next(sg);
   continue;
  }
  sg_bytes = min(remaining, sg->length - *offset);





  off = *offset + sg->offset;
  sg_bytes = min(sg_bytes,
          (size_t)(PAGE_SIZE - (off & ~PAGE_MASK)));
  page_addr = kmap_atomic(sg_page(sg) + (off >> PAGE_SHIFT),
     km_type);
  if (crc)
   *crc = crc32(*crc, buf, sg_bytes);
  memcpy((char *)page_addr + (off & ~PAGE_MASK), buf, sg_bytes);
  kunmap_atomic(page_addr, km_type);
  buf += sg_bytes;
  *offset += sg_bytes;
  remaining -= sg_bytes;
  copy_len += sg_bytes;
 }
 return copy_len;
}
