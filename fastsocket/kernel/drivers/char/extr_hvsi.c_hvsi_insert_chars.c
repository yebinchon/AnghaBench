
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_struct {int sysrq; int tty; } ;


 int handle_sysrq (char,int ) ;
 int tty_insert_flip_char (int ,char,int ) ;

__attribute__((used)) static void hvsi_insert_chars(struct hvsi_struct *hp, const char *buf, int len)
{
 int i;

 for (i=0; i < len; i++) {
  char c = buf[i];
  tty_insert_flip_char(hp->tty, c, 0);
 }
}
