
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int mii; } ;
struct ethtool_cmd {int duplex; int speed; } ;


 int devdbg (struct usbnet*,char*,int ,int ) ;
 int mii_check_media (int *,int,int) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;

__attribute__((used)) static int dm9601_link_reset(struct usbnet *dev)
{
 struct ethtool_cmd ecmd;

 mii_check_media(&dev->mii, 1, 1);
 mii_ethtool_gset(&dev->mii, &ecmd);

 devdbg(dev, "link_reset() speed: %d duplex: %d",
        ecmd.speed, ecmd.duplex);

 return 0;
}
