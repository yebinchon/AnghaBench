
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {scalar_t__ cy; } ;


 int tty3270_convert_line (struct tty3270*,scalar_t__) ;

__attribute__((used)) static void
tty3270_ri(struct tty3270 *tp)
{
 if (tp->cy > 0) {
     tty3270_convert_line(tp, tp->cy);
     tp->cy--;
 }
}
