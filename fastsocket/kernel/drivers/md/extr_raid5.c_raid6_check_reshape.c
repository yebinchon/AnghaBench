
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int new_chunk_sectors; scalar_t__ new_layout; int array_sectors; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int algorithm_valid_raid6 (scalar_t__) ;
 int check_reshape (struct mddev*) ;
 int is_power_of_2 (int) ;

__attribute__((used)) static int raid6_check_reshape(struct mddev *mddev)
{
 int new_chunk = mddev->new_chunk_sectors;

 if (mddev->new_layout >= 0 && !algorithm_valid_raid6(mddev->new_layout))
  return -EINVAL;
 if (new_chunk > 0) {
  if (!is_power_of_2(new_chunk))
   return -EINVAL;
  if (new_chunk < (PAGE_SIZE >> 9))
   return -EINVAL;
  if (mddev->array_sectors & (new_chunk-1))

   return -EINVAL;
 }


 return check_reshape(mddev);
}
