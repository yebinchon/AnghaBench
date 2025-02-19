
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {char* name; int slabs; int partial; unsigned long alloc_fastpath; unsigned long alloc_slowpath; unsigned long free_fastpath; unsigned long free_slowpath; int objects; int order; int object_size; int objs_per_slab; int order_fallback; scalar_t__ trace; scalar_t__ store_user; scalar_t__ sanity_checks; scalar_t__ red_zone; scalar_t__ reclaim_account; scalar_t__ poison; scalar_t__ hwcache_align; scalar_t__ cache_dma; scalar_t__ aliases; scalar_t__ cpu_slabs; } ;


 int actual_slabs ;
 int first_line () ;
 int line ;
 int page_size ;
 int printf (char*,char*,int,int,...) ;
 int report (struct slabinfo*) ;
 scalar_t__ show_activity ;
 scalar_t__ show_empty ;
 scalar_t__ skip_zero ;
 int slab_size (struct slabinfo*) ;
 int snprintf (char*,int,char*,scalar_t__,int,scalar_t__) ;
 int store_size (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void slabcache(struct slabinfo *s)
{
 char size_str[20];
 char dist_str[40];
 char flags[20];
 char *p = flags;

 if (strcmp(s->name, "*") == 0)
  return;

 if (actual_slabs == 1) {
  report(s);
  return;
 }

 if (skip_zero && !show_empty && !s->slabs)
  return;

 if (show_empty && s->slabs)
  return;

 store_size(size_str, slab_size(s));
 snprintf(dist_str, 40, "%lu/%lu/%d", s->slabs - s->cpu_slabs,
      s->partial, s->cpu_slabs);

 if (!line++)
  first_line();

 if (s->aliases)
  *p++ = '*';
 if (s->cache_dma)
  *p++ = 'd';
 if (s->hwcache_align)
  *p++ = 'A';
 if (s->poison)
  *p++ = 'P';
 if (s->reclaim_account)
  *p++ = 'a';
 if (s->red_zone)
  *p++ = 'Z';
 if (s->sanity_checks)
  *p++ = 'F';
 if (s->store_user)
  *p++ = 'U';
 if (s->trace)
  *p++ = 'T';

 *p = 0;
 if (show_activity) {
  unsigned long total_alloc;
  unsigned long total_free;

  total_alloc = s->alloc_fastpath + s->alloc_slowpath;
  total_free = s->free_fastpath + s->free_slowpath;

  printf("%-21s %8ld %10ld %10ld %3ld %3ld %5ld %1d\n",
   s->name, s->objects,
   total_alloc, total_free,
   total_alloc ? (s->alloc_fastpath * 100 / total_alloc) : 0,
   total_free ? (s->free_fastpath * 100 / total_free) : 0,
   s->order_fallback, s->order);
 }
 else
  printf("%-21s %8ld %7d %8s %14s %4d %1d %3ld %3ld %s\n",
   s->name, s->objects, s->object_size, size_str, dist_str,
   s->objs_per_slab, s->order,
   s->slabs ? (s->partial * 100) / s->slabs : 100,
   s->slabs ? (s->objects * s->object_size * 100) /
    (s->slabs * (page_size << s->order)) : 100,
   flags);
}
