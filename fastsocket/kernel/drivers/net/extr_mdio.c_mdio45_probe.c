
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_if_info {int (* mdio_read ) (int ,int,int,int ) ;int prtad; int mmds; int dev; } ;


 int ENODEV ;
 int MDIO_DEVS1 ;
 int MDIO_DEVS2 ;
 int MDIO_STAT2 ;
 int MDIO_STAT2_DEVPRST ;
 int MDIO_STAT2_DEVPRST_VAL ;
 int stub1 (int ,int,int,int ) ;
 int stub2 (int ,int,int,int ) ;
 int stub3 (int ,int,int,int ) ;

int mdio45_probe(struct mdio_if_info *mdio, int prtad)
{
 int mmd, stat2, devs1, devs2;



 for (mmd = 1; mmd <= 5; mmd++) {

  stat2 = mdio->mdio_read(mdio->dev, prtad, mmd, MDIO_STAT2);
  if (stat2 < 0 ||
      (stat2 & MDIO_STAT2_DEVPRST) != MDIO_STAT2_DEVPRST_VAL)
   continue;


  devs1 = mdio->mdio_read(mdio->dev, prtad, mmd, MDIO_DEVS1);
  devs2 = mdio->mdio_read(mdio->dev, prtad, mmd, MDIO_DEVS2);
  if (devs1 < 0 || devs2 < 0)
   continue;

  mdio->prtad = prtad;
  mdio->mmds = devs1 | (devs2 << 16);
  return 0;
 }

 return -ENODEV;
}
