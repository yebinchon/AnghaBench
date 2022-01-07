
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ascebc; } ;
struct con3270 {int update_flags; int update; TYPE_1__* cline; TYPE_2__ view; } ;
struct TYPE_3__ {int update; int len; int * string; } ;


 int CON_UPDATE_LIST ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static inline void
con3270_cline_insert(struct con3270 *cp, unsigned char c)
{
 cp->cline->string[cp->cline->len++] =
  cp->view.ascebc[(c < ' ') ? ' ' : c];
 if (list_empty(&cp->cline->update)) {
  list_add_tail(&cp->cline->update, &cp->update);
  cp->update_flags |= CON_UPDATE_LIST;
 }
}
