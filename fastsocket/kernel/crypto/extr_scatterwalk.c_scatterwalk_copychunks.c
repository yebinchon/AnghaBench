
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatter_walk {int dummy; } ;


 int memcpy_dir (void*,int *,unsigned int,int) ;
 int scatterwalk_advance (struct scatter_walk*,unsigned int) ;
 int * scatterwalk_map (struct scatter_walk*,int) ;
 int scatterwalk_pagedone (struct scatter_walk*,int,int) ;
 unsigned int scatterwalk_pagelen (struct scatter_walk*) ;
 int scatterwalk_unmap (int *,int) ;

void scatterwalk_copychunks(void *buf, struct scatter_walk *walk,
       size_t nbytes, int out)
{
 for (;;) {
  unsigned int len_this_page = scatterwalk_pagelen(walk);
  u8 *vaddr;

  if (len_this_page > nbytes)
   len_this_page = nbytes;

  vaddr = scatterwalk_map(walk, out);
  memcpy_dir(buf, vaddr, len_this_page, out);
  scatterwalk_unmap(vaddr, out);

  scatterwalk_advance(walk, len_this_page);

  if (nbytes == len_this_page)
   break;

  buf += len_this_page;
  nbytes -= len_this_page;

  scatterwalk_pagedone(walk, out, 1);
 }
}
