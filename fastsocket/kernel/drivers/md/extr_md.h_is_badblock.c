
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct md_rdev {scalar_t__ data_offset; TYPE_1__ badblocks; } ;
typedef scalar_t__ sector_t ;


 int md_is_badblock (TYPE_1__*,scalar_t__,int,scalar_t__*,int*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int is_badblock(struct md_rdev *rdev, sector_t s, int sectors,
         sector_t *first_bad, int *bad_sectors)
{
 if (unlikely(rdev->badblocks.count)) {
  int rv = md_is_badblock(&rdev->badblocks, rdev->data_offset + s,
     sectors,
     first_bad, bad_sectors);
  if (rv)
   *first_bad -= rdev->data_offset;
  return rv;
 }
 return 0;
}
