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
typedef  int u16 ;
struct usbnet {int /*<<< orphan*/  mii; int /*<<< orphan*/  data; } ;
struct ethtool_cmd {scalar_t__ speed; scalar_t__ duplex; } ;
struct asix_data {scalar_t__ phymode; scalar_t__ ledmode; } ;

/* Variables and functions */
 int AX88178_MEDIUM_DEFAULT ; 
 int AX_MEDIUM_ENCK ; 
 int AX_MEDIUM_FD ; 
 int AX_MEDIUM_GM ; 
 int AX_MEDIUM_PS ; 
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ PHY_MODE_MARVELL ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev)
{
	u16 mode;
	struct ethtool_cmd ecmd;
	struct asix_data *data = (struct asix_data *)&dev->data;

	FUNC1(dev,"ax88178_link_reset()");

	FUNC3(&dev->mii, 1, 1);
	FUNC4(&dev->mii, &ecmd);
	mode = AX88178_MEDIUM_DEFAULT;

	if (ecmd.speed == SPEED_1000)
		mode |= AX_MEDIUM_GM;
	else if (ecmd.speed == SPEED_100)
		mode |= AX_MEDIUM_PS;
	else
		mode &= ~(AX_MEDIUM_PS | AX_MEDIUM_GM);

	mode |= AX_MEDIUM_ENCK;

	if (ecmd.duplex == DUPLEX_FULL)
		mode |= AX_MEDIUM_FD;
	else
		mode &= ~AX_MEDIUM_FD;

	FUNC1(dev, "ax88178_link_reset() speed: %d duplex: %d setting mode to 0x%04x", ecmd.speed, ecmd.duplex, mode);

	FUNC0(dev, mode);

	if (data->phymode == PHY_MODE_MARVELL && data->ledmode)
		FUNC2(dev, ecmd.speed);

	return 0;
}