
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raid_devs; } ;
struct raid_set {TYPE_1__ set; } ;


 int chunk_pages (unsigned int) ;

__attribute__((used)) static inline unsigned stripe_pages(struct raid_set *rs, unsigned io_size)
{
 return chunk_pages(io_size) * rs->set.raid_devs;
}
