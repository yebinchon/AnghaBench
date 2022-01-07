
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_devs; } ;
struct raid_set {TYPE_1__ set; } ;
struct bio {int bi_sector; } ;
typedef int sector_t ;


 int sector_div (int ,int ) ;

__attribute__((used)) static sector_t _sector(struct raid_set *rs, struct bio *bio)
{
 sector_t sector = bio->bi_sector;

 sector_div(sector, rs->set.data_devs);
 return sector;
}
