
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ubi_vid_hdr ;
struct ubi_device {int vid_hdr_shift; int vid_hdr_alsize; } ;
typedef int gfp_t ;


 void* kzalloc (int ,int ) ;

__attribute__((used)) static inline struct ubi_vid_hdr *
ubi_zalloc_vid_hdr(const struct ubi_device *ubi, gfp_t gfp_flags)
{
 void *vid_hdr;

 vid_hdr = kzalloc(ubi->vid_hdr_alsize, gfp_flags);
 if (!vid_hdr)
  return ((void*)0);





 return vid_hdr + ubi->vid_hdr_shift;
}
