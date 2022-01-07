
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_TRANSCMD ;
 int gig_dbg (int ,char*,char*) ;

__attribute__((used)) static int isdn_getnum(char *p)
{
 int v = -1;

 gig_dbg(DEBUG_TRANSCMD, "string: %s", p);

 while (*p >= '0' && *p <= '9')
  v = ((v < 0) ? 0 : (v * 10)) + (int) ((*p++) - '0');
 if (*p)
  v = -1;
 return v;
}
