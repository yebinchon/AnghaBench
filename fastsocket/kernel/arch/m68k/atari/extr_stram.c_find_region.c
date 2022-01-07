
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* start; struct TYPE_4__* next; } ;
typedef TYPE_1__ BLOCK ;


 TYPE_1__* alloc_list ;

__attribute__((used)) static BLOCK *find_region( void *addr )
{
 BLOCK *p;

 for( p = alloc_list; p; p = p->next ) {
  if (p->start == addr)
   return( p );
  if (p->start > addr)
   break;
 }
 return( ((void*)0) );
}
