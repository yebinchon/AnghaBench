
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l2tei ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l2; } ;


 int MDL_ERROR ;
 int REQUEST ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
error_handling_dchan(struct PStack *st, int Error)
{
 switch (Error) {
  case 'C':
  case 'D':
  case 'G':
  case 'H':
   st->l2.l2tei(st, MDL_ERROR | REQUEST, ((void*)0));
   break;
 }
}
