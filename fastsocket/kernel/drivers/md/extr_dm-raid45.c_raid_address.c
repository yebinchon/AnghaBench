
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chunk_shift; int data_devs; int pi; int raid_devs; int io_inv_mask; TYPE_1__* raid_type; } ;
struct raid_set {TYPE_2__ set; } ;
struct raid_address {int di; int pi; int key; } ;
typedef int sector_t ;
struct TYPE_3__ {int level; int algorithm; } ;


 int BUG () ;







 void* sector_div (int,int) ;

__attribute__((used)) static struct raid_address *raid_address(struct raid_set *rs, sector_t sector,
      struct raid_address *addr)
{
 sector_t stripe, tmp;






 stripe = sector >> rs->set.chunk_shift;
 addr->di = sector_div(stripe, rs->set.data_devs);

 switch (rs->set.raid_type->level) {
 case 131:
  addr->pi = rs->set.pi;
  goto check_shift_di;
 case 130:
  tmp = stripe;
  addr->pi = sector_div(tmp, rs->set.raid_devs);

  switch (rs->set.raid_type->algorithm) {
  case 134:
   addr->pi = rs->set.data_devs - addr->pi;
  case 129:
check_shift_di:
   if (addr->di >= addr->pi)
    addr->di++;
   break;
  case 133:
   addr->pi = rs->set.data_devs - addr->pi;
  case 128:
   addr->di = (addr->pi + addr->di + 1) %
       rs->set.raid_devs;
   break;
  case 132:
   BUG();
  }
 }





 addr->key = (stripe << rs->set.chunk_shift) +
      (sector & rs->set.io_inv_mask);
 return addr;
}
