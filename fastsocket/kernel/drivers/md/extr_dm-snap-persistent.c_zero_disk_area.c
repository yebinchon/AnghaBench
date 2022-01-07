
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int zero_area; } ;
typedef int chunk_t ;


 int WRITE ;
 int area_location (struct pstore*,int ) ;
 int chunk_io (struct pstore*,int ,int ,int ,int ) ;

__attribute__((used)) static int zero_disk_area(struct pstore *ps, chunk_t area)
{
 return chunk_io(ps, ps->zero_area, area_location(ps, area), WRITE, 0);
}
