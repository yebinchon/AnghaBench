
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdn_getnum (char*) ;

__attribute__((used)) static int cid_of_response(char *s)
{
 int cid;

 if (s[-1] != ';')
  return 0;
 cid = isdn_getnum(s);
 if (cid < 0)
  return 0;
 if (cid < 1 || cid > 65535)
  return -1;
 return cid;

}
