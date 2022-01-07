
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;


 int sector_div (int,int) ;

__attribute__((used)) static int multiple(sector_t a, sector_t b, sector_t *n)
{
 sector_t r = a;

 sector_div(r, b);
 *n = r;
 return a == r * b;
}
