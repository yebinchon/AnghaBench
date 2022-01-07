
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CASE_DELIMITER ;
 int * _ebc_tolower ;
 int * _ebc_toupper ;
 scalar_t__ sclp_tty_tolower ;

__attribute__((used)) static int sclp_switch_cases(unsigned char *buf, int count)
{
 unsigned char *ip, *op;
 int toggle;


 toggle = 0;
 ip = op = buf;
 while (count-- > 0) {

  if (*ip == CASE_DELIMITER) {

   if (count && ip[1] == CASE_DELIMITER) {




    *op++ = *ip++;
    count--;
   } else




    toggle = ~toggle;

   ip++;
  } else

   if (toggle)

    if (sclp_tty_tolower)

     *op++ = _ebc_toupper[(int) *ip++];
    else

     *op++ = _ebc_tolower[(int) *ip++];
   else

    *op++ = *ip++;
 }

 return op - buf;
}
