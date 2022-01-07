
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;



__attribute__((used)) static inline sector_t dif_offset(sector_t sector)
{
 return sector << 3;
}
