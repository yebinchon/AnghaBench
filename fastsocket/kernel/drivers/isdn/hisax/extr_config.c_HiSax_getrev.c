
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

char *HiSax_getrev(const char *revision)
{
 char *rev;
 char *p;

 if ((p = strchr(revision, ':'))) {
  rev = p + 2;
  p = strchr(rev, '$');
  *--p = 0;
 } else
  rev = "???";
 return rev;
}
