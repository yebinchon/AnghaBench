
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;
typedef int bus_size_t ;


 int AHD_SCB_MAX_ALLOC ;
 int PAGE_SIZE ;
 int ahd_sglist_size (struct ahd_softc*) ;
 int roundup (int,int) ;

__attribute__((used)) static u_int
ahd_sglist_allocsize(struct ahd_softc *ahd)
{
 bus_size_t sg_list_increment;
 bus_size_t sg_list_size;
 bus_size_t max_list_size;
 bus_size_t best_list_size;


 sg_list_increment = ahd_sglist_size(ahd);
 sg_list_size = sg_list_increment;


 while ((sg_list_size + sg_list_increment) <= PAGE_SIZE)
  sg_list_size += sg_list_increment;





 best_list_size = sg_list_size;
 max_list_size = roundup(sg_list_increment, PAGE_SIZE);
 if (max_list_size < 4 * PAGE_SIZE)
  max_list_size = 4 * PAGE_SIZE;
 if (max_list_size > (AHD_SCB_MAX_ALLOC * sg_list_increment))
  max_list_size = (AHD_SCB_MAX_ALLOC * sg_list_increment);
 while ((sg_list_size + sg_list_increment) <= max_list_size
    && (sg_list_size % PAGE_SIZE) != 0) {
  bus_size_t new_mod;
  bus_size_t best_mod;

  sg_list_size += sg_list_increment;
  new_mod = sg_list_size % PAGE_SIZE;
  best_mod = best_list_size % PAGE_SIZE;
  if (new_mod > best_mod || new_mod == 0) {
   best_list_size = sg_list_size;
  }
 }
 return (best_list_size);
}
