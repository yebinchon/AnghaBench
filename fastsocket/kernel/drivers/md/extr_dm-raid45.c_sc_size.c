
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct stripe {int dummy; } ;
struct TYPE_4__ {int recovery_stripes; int io_size; scalar_t__ end_jiffies; } ;
struct TYPE_6__ {int io_size; int raid_devs; } ;
struct TYPE_5__ {int stripes; } ;
struct raid_set {TYPE_1__ recover; TYPE_3__ set; TYPE_2__ sc; } ;
struct page_list {int dummy; } ;


 int atomic_read (int *) ;
 int to_bytes (int) ;
 int to_sector (int) ;

__attribute__((used)) static unsigned sc_size(struct raid_set *rs)
{
 return to_sector(atomic_read(&rs->sc.stripes) *
    (sizeof(struct stripe) +
     (sizeof(struct stripe_chunk) +
      (sizeof(struct page_list) +
       to_bytes(rs->set.io_size) *
       rs->set.raid_devs)) +
     (rs->recover.end_jiffies ?
      0 : rs->recover.recovery_stripes *
      to_bytes(rs->set.raid_devs * rs->recover.io_size))));
}
