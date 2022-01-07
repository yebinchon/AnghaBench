
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const*) ;
 int EINVAL ;

__attribute__((used)) static int csr1212_check_minimal_ascii(const char *s)
{
 static const char minimal_ascii_table[] = {

  128,
  4 + 16 + 32,
  0,
  0,
  255 - 8 - 16,
  255,
  255,
  255,
  255,
  255,
  255,
  1 + 2 + 4 + 128,
  255 - 1,
  255,
  255,
  1 + 2 + 4,
 };
 int i, j;

 for (; *s; s++) {
  i = *s >> 3;
  j = 1 << (*s & 3);

  if (i >= ARRAY_SIZE(minimal_ascii_table) ||
      !(minimal_ascii_table[i] & j))
   return -EINVAL;
 }
 return 0;
}
