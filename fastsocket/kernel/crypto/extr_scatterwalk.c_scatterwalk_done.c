
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatter_walk {int offset; } ;


 int offset_in_page (int ) ;
 int scatterwalk_pagedone (struct scatter_walk*,int,int) ;

void scatterwalk_done(struct scatter_walk *walk, int out, int more)
{
 if (!offset_in_page(walk->offset) || !more)
  scatterwalk_pagedone(walk, out, more);
}
