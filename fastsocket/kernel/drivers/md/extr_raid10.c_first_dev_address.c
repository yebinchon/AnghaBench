
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geom {int chunk_shift; int near_copies; int far_copies; int raid_disks; } ;
typedef int sector_t ;


 int sector_div (int,int ) ;

__attribute__((used)) static sector_t first_dev_address(sector_t s, struct geom *geo)
{
 s >>= geo->chunk_shift;
 s *= geo->near_copies;
 sector_div(s, geo->raid_disks);
 s *= geo->far_copies;
 s <<= geo->chunk_shift;
 return s;
}
