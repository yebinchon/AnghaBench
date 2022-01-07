
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; struct TYPE_5__* next; } ;
typedef TYPE_1__ BLOCK ;


 int BLOCK_FREE ;
 int BLOCK_KMALLOCED ;
 TYPE_1__* alloc_list ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static int remove_region( BLOCK *block )
{
 BLOCK **p;

 for( p = &alloc_list; *p; p = &((*p)->next) )
  if (*p == block) break;
 if (!*p)
  return( 0 );

 *p = block->next;
 if (block->flags & BLOCK_KMALLOCED)
  kfree( block );
 else
  block->flags |= BLOCK_FREE;
 return( 1 );
}
