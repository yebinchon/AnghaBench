
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int dword ;
typedef int byte ;
typedef int PLCI ;
typedef int DIVA_CAPI_ADAPTER ;
typedef int APPL ;
typedef int API_PARSE ;


 int dbug (int,int ) ;
 int dprintf (char*) ;

__attribute__((used)) static byte info_res(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
       PLCI *plci, APPL *appl, API_PARSE *msg)
{
  dbug(1,dprintf("info_res"));
  return 0;
}
