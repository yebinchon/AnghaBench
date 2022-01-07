
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOSID_BASE ;
 int ID_ADNP ;
 int ID_DNPC ;
 scalar_t__ ioremap (int ,int) ;
 int iounmap (void*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int dnp_adnp_probe(void)
{
 char *biosid, rc = -1;

 biosid = (char*)ioremap(BIOSID_BASE, 16);
 if(biosid)
 {
  if(!strcmp(biosid, ID_DNPC))
   rc = 1;
  else if(!strcmp(biosid, ID_ADNP))
   rc = 0;
 }
 iounmap((void *)biosid);
 return(rc);
}
