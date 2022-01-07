
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct dm_target {int dummy; } ;
struct bio {int dummy; } ;


 int EIO ;

__attribute__((used)) static int io_err_map(struct dm_target *tt, struct bio *bio,
        union map_info *map_context)
{
 return -EIO;
}
