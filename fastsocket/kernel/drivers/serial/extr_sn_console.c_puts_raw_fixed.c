
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,int) ;

__attribute__((used)) static void puts_raw_fixed(int (*puts_raw) (const char *s, int len),
      const char *s, int count)
{
 const char *s1;


 while ((s1 = memchr(s, '\n', count)) != ((void*)0)) {
  puts_raw(s, s1 - s);
  puts_raw("\r\n", 2);
  count -= s1 + 1 - s;
  s = s1 + 1;
 }
 puts_raw(s, count);
}
