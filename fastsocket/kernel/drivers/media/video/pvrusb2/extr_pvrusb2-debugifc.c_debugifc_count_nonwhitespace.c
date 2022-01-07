
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int debugifc_count_nonwhitespace(const char *buf,
       unsigned int count)
{
 unsigned int scnt;
 char ch;

 for (scnt = 0; scnt < count; scnt++) {
  ch = buf[scnt];
  if (ch == ' ') break;
  if (ch == '\t') break;
  if (ch == '\n') break;
 }
 return scnt;
}
