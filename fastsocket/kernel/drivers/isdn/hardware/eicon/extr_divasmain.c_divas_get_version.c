
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DIVA_BUILD ;
 char* DRIVERLNAME ;
 char* DRIVERRELEASE_DIVAS ;
 char* diva_xdi_common_code_build ;
 char* getrev (char*) ;
 int main_revision ;
 int major ;
 int sprintf (char*,char*,char*,char*,char*,char*,char*,int) ;
 int strcpy (char*,int ) ;

void divas_get_version(char *p)
{
 char tmprev[32];

 strcpy(tmprev, main_revision);
 sprintf(p, "%s: %s(%s) %s(%s) major=%d\n", DRIVERLNAME, DRIVERRELEASE_DIVAS,
  getrev(tmprev), diva_xdi_common_code_build, DIVA_BUILD, major);
}
