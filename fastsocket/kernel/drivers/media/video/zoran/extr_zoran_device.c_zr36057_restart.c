
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran {int dummy; } ;


 int ZR36057_GPPGCR1 ;
 int ZR36057_JPC ;
 int ZR36057_SPGPPCR ;
 int ZR36057_SPGPPCR_SoftReset ;
 int btor (int,int ) ;
 int btwrite (int,int ) ;
 int mdelay (int) ;

void
zr36057_restart (struct zoran *zr)
{
 btwrite(0, ZR36057_SPGPPCR);
 mdelay(1);
 btor(ZR36057_SPGPPCR_SoftReset, ZR36057_SPGPPCR);
 mdelay(1);


 btwrite(0, ZR36057_JPC);

 btwrite(ZR36057_SPGPPCR_SoftReset | 0, ZR36057_SPGPPCR);


 btwrite((0x81 << 24) | 0x8888, ZR36057_GPPGCR1);
}
