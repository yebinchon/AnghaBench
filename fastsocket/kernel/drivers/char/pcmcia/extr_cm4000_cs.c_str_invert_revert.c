
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char invert_revert (unsigned char) ;

__attribute__((used)) static void str_invert_revert(unsigned char *b, int len)
{
 int i;

 for (i = 0; i < len; i++)
  b[i] = invert_revert(b[i]);
}
