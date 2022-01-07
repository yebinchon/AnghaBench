
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {char* name; } ;


 int strcpy (char*,char*) ;

char *tty_name(struct tty_struct *tty, char *buf)
{
 if (!tty)
  strcpy(buf, "NULL tty");
 else
  strcpy(buf, tty->name);
 return buf;
}
