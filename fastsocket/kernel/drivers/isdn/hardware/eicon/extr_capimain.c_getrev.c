
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static char *getrev(const char *revision)
{
 char *rev;
 char *p;
 if ((p = strchr(revision, ':'))) {
  rev = p + 2;
  p = strchr(rev, '$');
  *--p = 0;
 } else
  rev = "1.0";
 return rev;

}
