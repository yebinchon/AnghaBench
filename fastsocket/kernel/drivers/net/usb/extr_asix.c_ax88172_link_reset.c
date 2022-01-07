
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int mii; } ;
struct ethtool_cmd {scalar_t__ duplex; int speed; } ;


 int AX88172_MEDIUM_DEFAULT ;
 int AX88172_MEDIUM_FD ;
 scalar_t__ DUPLEX_FULL ;
 int asix_write_medium_mode (struct usbnet*,int ) ;
 int devdbg (struct usbnet*,char*,int ,scalar_t__,int ) ;
 int mii_check_media (int *,int,int) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;

__attribute__((used)) static int ax88172_link_reset(struct usbnet *dev)
{
 u8 mode;
 struct ethtool_cmd ecmd;

 mii_check_media(&dev->mii, 1, 1);
 mii_ethtool_gset(&dev->mii, &ecmd);
 mode = AX88172_MEDIUM_DEFAULT;

 if (ecmd.duplex != DUPLEX_FULL)
  mode |= ~AX88172_MEDIUM_FD;

 devdbg(dev, "ax88172_link_reset() speed: %d duplex: %d setting mode to 0x%04x", ecmd.speed, ecmd.duplex, mode);

 asix_write_medium_mode(dev, mode);

 return 0;
}
