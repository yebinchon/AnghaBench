
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int modem_info ;


 int PARSE_ERROR1 ;
 scalar_t__ TTY_IS_FCLASS1 (int *) ;
 scalar_t__ TTY_IS_FCLASS2 (int *) ;
 int isdn_tty_cmd_FCLASS1 (char**,int *) ;
 int isdn_tty_cmd_FCLASS2 (char**,int *) ;

int
isdn_tty_cmd_PLUSF_FAX(char **p, modem_info * info)
{
 if (TTY_IS_FCLASS2(info))
  return (isdn_tty_cmd_FCLASS2(p, info));
 else if (TTY_IS_FCLASS1(info))
  return (isdn_tty_cmd_FCLASS1(p, info));
 PARSE_ERROR1;
}
