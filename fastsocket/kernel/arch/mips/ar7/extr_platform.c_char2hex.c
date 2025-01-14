
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char char2hex(char h)
{
 switch (h) {
 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
  return h - '0';
 case 'A': case 'B': case 'C': case 'D': case 'E': case 'F':
  return h - 'A' + 10;
 case 'a': case 'b': case 'c': case 'd': case 'e': case 'f':
  return h - 'a' + 10;
 default:
  return 0;
 }
}
