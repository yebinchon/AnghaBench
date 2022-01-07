
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strip_and_pad_whitespace(int i, char *buf)
{
 while (i && buf[i] == ' ')
  i--;
 buf[i+1] = ' ';
 buf[i+2] = '\0';
 return i + 2;
}
