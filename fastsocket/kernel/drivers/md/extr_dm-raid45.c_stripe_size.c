
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct stripe {int dummy; } ;
struct TYPE_2__ {int raid_devs; } ;
struct raid_set {TYPE_1__ set; } ;



__attribute__((used)) static size_t stripe_size(struct raid_set *rs)
{
 return sizeof(struct stripe) +
        rs->set.raid_devs * sizeof(struct stripe_chunk);
}
