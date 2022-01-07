
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int dummy; } ;
struct raw3270_view {int dummy; } ;


 int tty3270_free_screen (struct tty3270*) ;
 int tty3270_free_view (struct tty3270*) ;

__attribute__((used)) static void
tty3270_free(struct raw3270_view *view)
{
 tty3270_free_screen((struct tty3270 *) view);
 tty3270_free_view((struct tty3270 *) view);
}
