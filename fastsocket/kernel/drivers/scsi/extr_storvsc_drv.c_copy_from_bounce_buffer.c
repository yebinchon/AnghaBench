
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned long offset; unsigned int length; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (void*,void*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned long sg_kmap_atomic (struct scatterlist*,int) ;
 int sg_kunmap_atomic (unsigned long) ;

__attribute__((used)) static unsigned int copy_from_bounce_buffer(struct scatterlist *orig_sgl,
         struct scatterlist *bounce_sgl,
         unsigned int orig_sgl_count,
         unsigned int bounce_sgl_count)
{
 int i;
 int j = 0;
 unsigned long src, dest;
 unsigned int srclen, destlen, copylen;
 unsigned int total_copied = 0;
 unsigned long bounce_addr = 0;
 unsigned long dest_addr = 0;
 unsigned long flags;

 local_irq_save(flags);

 for (i = 0; i < orig_sgl_count; i++) {
  dest_addr = sg_kmap_atomic(orig_sgl,i) + orig_sgl[i].offset;
  dest = dest_addr;
  destlen = orig_sgl[i].length;

  if (bounce_addr == 0)
   bounce_addr = sg_kmap_atomic(bounce_sgl,j);

  while (destlen) {
   src = bounce_addr + bounce_sgl[j].offset;
   srclen = bounce_sgl[j].length - bounce_sgl[j].offset;

   copylen = min(srclen, destlen);
   memcpy((void *)dest, (void *)src, copylen);

   total_copied += copylen;
   bounce_sgl[j].offset += copylen;
   destlen -= copylen;
   dest += copylen;

   if (bounce_sgl[j].offset == bounce_sgl[j].length) {

    sg_kunmap_atomic(bounce_addr);
    j++;
    if (j == bounce_sgl_count) {



     sg_kunmap_atomic(dest_addr - orig_sgl[i].offset);
     local_irq_restore(flags);
     return total_copied;
    }


    if (destlen || i != orig_sgl_count - 1)
     bounce_addr = sg_kmap_atomic(bounce_sgl,j);
   } else if (destlen == 0 && i == orig_sgl_count - 1) {

    sg_kunmap_atomic(bounce_addr);
   }
  }

  sg_kunmap_atomic(dest_addr - orig_sgl[i].offset);
 }

 local_irq_restore(flags);

 return total_copied;
}
