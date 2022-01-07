
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int symlist_t ;
struct TYPE_8__ {TYPE_1__* symbol; } ;
typedef TYPE_2__ symbol_node_t ;
struct TYPE_7__ {int name; } ;


 TYPE_2__* SLIST_FIRST (int *) ;
 TYPE_2__* SLIST_NEXT (TYPE_2__*,int ) ;
 int links ;
 scalar_t__ strcmp (char*,int ) ;

symbol_node_t *
symlist_search(symlist_t *symlist, char *symname)
{
 symbol_node_t *curnode;

 curnode = SLIST_FIRST(symlist);
 while(curnode != ((void*)0)) {
  if (strcmp(symname, curnode->symbol->name) == 0)
   break;
  curnode = SLIST_NEXT(curnode, links);
 }
 return (curnode);
}
