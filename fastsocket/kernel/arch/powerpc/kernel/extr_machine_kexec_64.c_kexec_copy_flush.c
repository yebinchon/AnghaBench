
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {long nr_segments; int head; int segment; } ;
struct kexec_segment {scalar_t__ memsz; scalar_t__ mem; } ;
typedef int ranges ;


 int KEXEC_SEGMENT_MAX ;
 scalar_t__ __va (scalar_t__) ;
 int copy_segments (int ) ;
 int flush_icache_range (unsigned long,unsigned long) ;
 int memcpy (struct kexec_segment*,int ,int) ;

void kexec_copy_flush(struct kimage *image)
{
 long i, nr_segments = image->nr_segments;
 struct kexec_segment ranges[KEXEC_SEGMENT_MAX];


 memcpy(ranges, image->segment, sizeof(ranges));







 copy_segments(image->head);





 for (i = 0; i < nr_segments; i++)
  flush_icache_range((unsigned long)__va(ranges[i].mem),
   (unsigned long)__va(ranges[i].mem + ranges[i].memsz));
}
