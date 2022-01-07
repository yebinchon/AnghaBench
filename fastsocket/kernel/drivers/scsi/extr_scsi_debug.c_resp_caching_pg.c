
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caching_pg ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int resp_caching_pg(unsigned char * p, int pcontrol, int target)
{
 unsigned char caching_pg[] = {0x8, 18, 0x14, 0, 0xff, 0xff, 0, 0,
  0xff, 0xff, 0xff, 0xff, 0x80, 0x14, 0, 0, 0, 0, 0, 0};

 memcpy(p, caching_pg, sizeof(caching_pg));
 if (1 == pcontrol)
  memset(p + 2, 0, sizeof(caching_pg) - 2);
 return sizeof(caching_pg);
}
