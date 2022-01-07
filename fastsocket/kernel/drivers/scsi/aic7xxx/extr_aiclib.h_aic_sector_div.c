
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sector_t ;


 int sector_div (scalar_t__,int) ;

__attribute__((used)) static inline int
aic_sector_div(sector_t capacity, int heads, int sectors)
{

 sector_div(capacity, (heads * sectors));
 return (int)capacity;
}
