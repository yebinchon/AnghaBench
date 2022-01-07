
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int area; int current_area; } ;
typedef int chunk_t ;


 int area_location (struct pstore*,int ) ;
 int chunk_io (struct pstore*,int ,int ,int,int ) ;

__attribute__((used)) static int area_io(struct pstore *ps, int rw)
{
 int r;
 chunk_t chunk;

 chunk = area_location(ps, ps->current_area);

 r = chunk_io(ps, ps->area, chunk, rw, 0);
 if (r)
  return r;

 return 0;
}
