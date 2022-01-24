#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_char ;
typedef  int u16 ;
struct sis900_private {struct mii_phy* mii; } ;
struct net_device {int if_port; } ;
struct mii_phy {int /*<<< orphan*/  phy_addr; } ;
struct ifmap {int port; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  IF_PORT_100BASEFX 134 
#define  IF_PORT_100BASET 133 
#define  IF_PORT_100BASETX 132 
#define  IF_PORT_10BASE2 131 
#define  IF_PORT_10BASET 130 
#define  IF_PORT_AUI 129 
#define  IF_PORT_UNKNOWN 128 
 int MII_CNTL_AUTO ; 
 int MII_CNTL_RST_AUTO ; 
 int MII_CNTL_SPEED ; 
 int /*<<< orphan*/  MII_CONTROL ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sis900_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifmap *map)
{
	struct sis900_private *sis_priv = FUNC2(dev);
	struct mii_phy *mii_phy = sis_priv->mii;

	u16 status;

	if ((map->port != (u_char)(-1)) && (map->port != dev->if_port)) {
		/* we switch on the ifmap->port field. I couldn't find anything
		 * like a definition or standard for the values of that field.
		 * I think the meaning of those values is device specific. But
		 * since I would like to change the media type via the ifconfig
		 * command I use the definition from linux/netdevice.h
		 * (which seems to be different from the ifport(pcmcia) definition) */
		switch(map->port){
		case IF_PORT_UNKNOWN: /* use auto here */
			dev->if_port = map->port;
			/* we are going to change the media type, so the Link
			 * will be temporary down and we need to reflect that
			 * here. When the Link comes up again, it will be
			 * sensed by the sis_timer procedure, which also does
			 * all the rest for us */
			FUNC3(dev);

			/* read current state */
			status = FUNC0(dev, mii_phy->phy_addr, MII_CONTROL);

			/* enable auto negotiation and reset the negotioation
			 * (I don't really know what the auto negatiotiation
			 * reset really means, but it sounds for me right to
			 * do one here) */
			FUNC1(dev, mii_phy->phy_addr,
				   MII_CONTROL, status | MII_CNTL_AUTO | MII_CNTL_RST_AUTO);

			break;

		case IF_PORT_10BASET: /* 10BaseT */
			dev->if_port = map->port;

			/* we are going to change the media type, so the Link
			 * will be temporary down and we need to reflect that
			 * here. When the Link comes up again, it will be
			 * sensed by the sis_timer procedure, which also does
			 * all the rest for us */
			FUNC3(dev);

			/* set Speed to 10Mbps */
			/* read current state */
			status = FUNC0(dev, mii_phy->phy_addr, MII_CONTROL);

			/* disable auto negotiation and force 10MBit mode*/
			FUNC1(dev, mii_phy->phy_addr,
				   MII_CONTROL, status & ~(MII_CNTL_SPEED |
					MII_CNTL_AUTO));
			break;

		case IF_PORT_100BASET: /* 100BaseT */
		case IF_PORT_100BASETX: /* 100BaseTx */
			dev->if_port = map->port;

			/* we are going to change the media type, so the Link
			 * will be temporary down and we need to reflect that
			 * here. When the Link comes up again, it will be
			 * sensed by the sis_timer procedure, which also does
			 * all the rest for us */
			FUNC3(dev);

			/* set Speed to 100Mbps */
			/* disable auto negotiation and enable 100MBit Mode */
			status = FUNC0(dev, mii_phy->phy_addr, MII_CONTROL);
			FUNC1(dev, mii_phy->phy_addr,
				   MII_CONTROL, (status & ~MII_CNTL_SPEED) |
				   MII_CNTL_SPEED);

			break;

		case IF_PORT_10BASE2: /* 10Base2 */
		case IF_PORT_AUI: /* AUI */
		case IF_PORT_100BASEFX: /* 100BaseFx */
                	/* These Modes are not supported (are they?)*/
			return -EOPNOTSUPP;
			break;

		default:
			return -EINVAL;
		}
	}
	return 0;
}