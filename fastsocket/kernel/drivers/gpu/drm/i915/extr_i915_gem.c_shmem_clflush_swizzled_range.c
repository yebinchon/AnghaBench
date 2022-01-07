
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drm_clflush_virt_range (char*,unsigned long) ;
 unsigned long round_down (unsigned long,int) ;
 unsigned long round_up (unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
shmem_clflush_swizzled_range(char *addr, unsigned long length,
        bool swizzled)
{
 if (unlikely(swizzled)) {
  unsigned long start = (unsigned long) addr;
  unsigned long end = (unsigned long) addr + length;





  start = round_down(start, 128);
  end = round_up(end, 128);

  drm_clflush_virt_range((void *)start, end - start);
 } else {
  drm_clflush_virt_range(addr, length);
 }

}
