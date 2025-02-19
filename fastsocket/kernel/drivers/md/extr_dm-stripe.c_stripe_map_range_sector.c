
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stripe_c {scalar_t__ chunk_size_shift; int chunk_size; } ;
typedef int sector_t ;


 scalar_t__ sector_div (int,int) ;
 int stripe_map_sector (struct stripe_c*,int,scalar_t__*,int*) ;

__attribute__((used)) static void stripe_map_range_sector(struct stripe_c *sc, sector_t sector,
        uint32_t target_stripe, sector_t *result)
{
 uint32_t stripe;

 stripe_map_sector(sc, sector, &stripe, result);
 if (stripe == target_stripe)
  return;


 sector = *result;
 if (sc->chunk_size_shift < 0)
  *result -= sector_div(sector, sc->chunk_size);
 else
  *result = sector & ~(sector_t)(sc->chunk_size - 1);

 if (target_stripe < stripe)
  *result += sc->chunk_size;
}
