
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,int) ;

const char *qib_get_unit_name(int unit)
{
 static char iname[16];

 snprintf(iname, sizeof iname, "infinipath%u", unit);
 return iname;
}
