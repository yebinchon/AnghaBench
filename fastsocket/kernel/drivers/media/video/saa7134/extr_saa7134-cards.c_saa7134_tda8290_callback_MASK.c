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
struct saa7134_dev {int board; } ;

/* Variables and functions */
#define  SAA7134_BOARD_AVERMEDIA_M733A 131 
#define  SAA7134_BOARD_HAUPPAUGE_HVR1120 130 
#define  SAA7134_BOARD_HAUPPAUGE_HVR1150 129 
#define  SAA7134_BOARD_KWORLD_PCI_SBTVD_FULLSEG 128 
 int FUNC0 (struct saa7134_dev*,int,int) ; 
 int FUNC1 (struct saa7134_dev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct saa7134_dev *dev,
				    int command, int arg)
{
	int ret;

	switch (dev->board) {
	case SAA7134_BOARD_HAUPPAUGE_HVR1150:
	case SAA7134_BOARD_HAUPPAUGE_HVR1120:
	case SAA7134_BOARD_AVERMEDIA_M733A:
	case SAA7134_BOARD_KWORLD_PCI_SBTVD_FULLSEG:
		/* tda8290 + tda18271 */
		ret = FUNC0(dev, command, arg);
		break;
	default:
		/* tda8290 + tda827x */
		ret = FUNC1(dev, command, arg);
		break;
	}
	return ret;
}