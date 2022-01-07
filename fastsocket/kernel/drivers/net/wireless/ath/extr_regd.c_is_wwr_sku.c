
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int COUNTRY_ERD_FLAG ;
 int WORLD ;
 int WORLD_SKU_MASK ;
 int WORLD_SKU_PREFIX ;

__attribute__((used)) static inline bool is_wwr_sku(u16 regd)
{
 return ((regd & COUNTRY_ERD_FLAG) != COUNTRY_ERD_FLAG) &&
  (((regd & WORLD_SKU_MASK) == WORLD_SKU_PREFIX) ||
  (regd == WORLD));
}
