
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rs_fair_output () ;
 int rs_put_char (char) ;

void console_print_68328(const char *p)
{
 char c;

 while((c=*(p++)) != 0) {
  if(c == '\n')
   rs_put_char('\r');
  rs_put_char(c);
 }


 rs_fair_output();

 return;
}
