
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {scalar_t__ cx; } ;



__attribute__((used)) static void
tty3270_cr(struct tty3270 *tp)
{
 tp->cx = 0;
}
