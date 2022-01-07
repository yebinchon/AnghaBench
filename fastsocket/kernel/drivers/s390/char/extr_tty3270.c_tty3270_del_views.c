
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int view; } ;


 int IS_ERR (struct tty3270*) ;
 scalar_t__ RAW3270_FIRSTMINOR ;
 int raw3270_del_view (int *) ;
 scalar_t__ raw3270_find_view (int *,scalar_t__) ;
 int tty3270_fn ;
 int tty3270_max_index ;

__attribute__((used)) static void
tty3270_del_views(void)
{
 struct tty3270 *tp;
 int i;

 for (i = 0; i < tty3270_max_index; i++) {
  tp = (struct tty3270 *)
   raw3270_find_view(&tty3270_fn, i + RAW3270_FIRSTMINOR);
  if (!IS_ERR(tp))
   raw3270_del_view(&tp->view);
 }
}
