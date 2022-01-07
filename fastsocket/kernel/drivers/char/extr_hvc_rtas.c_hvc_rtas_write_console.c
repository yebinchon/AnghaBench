
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ rtas_call (int ,int,int,int *,char const) ;
 int rtascons_put_char_token ;

__attribute__((used)) static inline int hvc_rtas_write_console(uint32_t vtermno, const char *buf,
  int count)
{
 int i;

 for (i = 0; i < count; i++) {
  if (rtas_call(rtascons_put_char_token, 1, 1, ((void*)0), buf[i]))
   break;
 }

 return i;
}
