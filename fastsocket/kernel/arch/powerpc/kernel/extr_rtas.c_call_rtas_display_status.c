
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtas_args {int token; int nargs; int nret; unsigned char* args; int * rets; } ;
typedef int rtas_arg_t ;
struct TYPE_2__ {int base; struct rtas_args args; } ;


 int __pa (struct rtas_args*) ;
 int enter_rtas (int ) ;
 unsigned long lock_rtas () ;
 TYPE_1__ rtas ;
 int unlock_rtas (unsigned long) ;

__attribute__((used)) static void call_rtas_display_status(char c)
{
 struct rtas_args *args = &rtas.args;
 unsigned long s;

 if (!rtas.base)
  return;
 s = lock_rtas();

 args->token = 10;
 args->nargs = 1;
 args->nret = 1;
 args->rets = (rtas_arg_t *)&(args->args[1]);
 args->args[0] = (unsigned char)c;

 enter_rtas(__pa(args));

 unlock_rtas(s);
}
