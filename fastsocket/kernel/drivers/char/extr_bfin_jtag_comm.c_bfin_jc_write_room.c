
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int bfin_jc_write_buf ;
 int circ_free (int *) ;

__attribute__((used)) static int
bfin_jc_write_room(struct tty_struct *tty)
{
 return circ_free(&bfin_jc_write_buf);
}
