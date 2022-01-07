
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int bfin_jc_write_buf ;
 int circ_cnt (int *) ;

__attribute__((used)) static int
bfin_jc_chars_in_buffer(struct tty_struct *tty)
{
 return circ_cnt(&bfin_jc_write_buf);
}
