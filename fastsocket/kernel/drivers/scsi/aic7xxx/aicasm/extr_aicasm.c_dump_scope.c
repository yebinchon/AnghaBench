
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int inner_scope; } ;
typedef TYPE_1__ scope_t ;


 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int emit_patch (TYPE_1__*,int) ;
 int scope_links ;

__attribute__((used)) static void
dump_scope(scope_t *scope)
{
 scope_t *cur_scope;




 emit_patch(scope, 0);




 cur_scope = TAILQ_FIRST(&scope->inner_scope);

 while (cur_scope != ((void*)0)) {

  dump_scope(cur_scope);

  cur_scope = TAILQ_NEXT(cur_scope, scope_links);
 }




 emit_patch(scope, 1);
}
