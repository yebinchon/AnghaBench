
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ rtas_call (int ,int ,int,int*) ;
 int rtascons_get_char_token ;

__attribute__((used)) static int hvc_rtas_read_console(uint32_t vtermno, char *buf, int count)
{
 int i, c;

 for (i = 0; i < count; i++) {
  if (rtas_call(rtascons_get_char_token, 0, 2, &c))
   break;

  buf[i] = c;
 }

 return i;
}
