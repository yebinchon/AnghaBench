
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stripe_c {int chunk_size_shift; int chunk_size; int stripes_shift; int stripes; int ti; } ;
typedef int sector_t ;


 int dm_target_offset (int ,int) ;
 void* sector_div (int,int) ;

__attribute__((used)) static void stripe_map_sector(struct stripe_c *sc, sector_t sector,
         uint32_t *stripe, sector_t *result)
{
 sector_t chunk = dm_target_offset(sc->ti, sector);
 sector_t chunk_offset;

 if (sc->chunk_size_shift < 0)
  chunk_offset = sector_div(chunk, sc->chunk_size);
 else {
  chunk_offset = chunk & (sc->chunk_size - 1);
  chunk >>= sc->chunk_size_shift;
 }

 if (sc->stripes_shift < 0)
  *stripe = sector_div(chunk, sc->stripes);
 else {
  *stripe = chunk & (sc->stripes - 1);
  chunk >>= sc->stripes_shift;
 }

 if (sc->chunk_size_shift < 0)
  chunk *= sc->chunk_size;
 else
  chunk <<= sc->chunk_size_shift;

 *result = chunk + chunk_offset;
}
