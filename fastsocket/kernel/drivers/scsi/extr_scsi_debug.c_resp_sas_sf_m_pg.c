
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sas_sf_m_pg ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int resp_sas_sf_m_pg(unsigned char * p, int pcontrol, int target)
{
 unsigned char sas_sf_m_pg[] = {0x19, 0x6,
  0x6, 0x0, 0x7, 0xd0, 0x0, 0x0};

 memcpy(p, sas_sf_m_pg, sizeof(sas_sf_m_pg));
 if (1 == pcontrol)
  memset(p + 2, 0, sizeof(sas_sf_m_pg) - 2);
 return sizeof(sas_sf_m_pg);
}
