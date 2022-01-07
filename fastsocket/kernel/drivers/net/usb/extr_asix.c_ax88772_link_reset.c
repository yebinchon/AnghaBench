
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int mii; } ;
struct ethtool_cmd {scalar_t__ speed; scalar_t__ duplex; } ;


 int AX88772_MEDIUM_DEFAULT ;
 int AX_MEDIUM_FD ;
 int AX_MEDIUM_PS ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ SPEED_100 ;
 int asix_write_medium_mode (struct usbnet*,int ) ;
 int devdbg (struct usbnet*,char*,scalar_t__,scalar_t__,int ) ;
 int mii_check_media (int *,int,int) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;

__attribute__((used)) static int ax88772_link_reset(struct usbnet *dev)
{
 u16 mode;
 struct ethtool_cmd ecmd;

 mii_check_media(&dev->mii, 1, 1);
 mii_ethtool_gset(&dev->mii, &ecmd);
 mode = AX88772_MEDIUM_DEFAULT;

 if (ecmd.speed != SPEED_100)
  mode &= ~AX_MEDIUM_PS;

 if (ecmd.duplex != DUPLEX_FULL)
  mode &= ~AX_MEDIUM_FD;

 devdbg(dev, "ax88772_link_reset() speed: %d duplex: %d setting mode to 0x%04x", ecmd.speed, ecmd.duplex, mode);

 asix_write_medium_mode(dev, mode);

 return 0;
}
