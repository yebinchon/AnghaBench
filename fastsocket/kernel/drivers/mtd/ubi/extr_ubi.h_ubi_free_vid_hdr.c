
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_hdr {int dummy; } ;
struct ubi_device {int vid_hdr_shift; } ;


 int kfree (void*) ;

__attribute__((used)) static inline void ubi_free_vid_hdr(const struct ubi_device *ubi,
        struct ubi_vid_hdr *vid_hdr)
{
 void *p = vid_hdr;

 if (!p)
  return;

 kfree(p - ubi->vid_hdr_shift);
}
