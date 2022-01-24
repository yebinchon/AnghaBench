#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct suni_priv {int dummy; } ;
struct atm_dev {int /*<<< orphan*/ * phy; int /*<<< orphan*/  phy_data; } ;
struct TYPE_2__ {unsigned char type; struct atm_dev* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MRI ; 
 int /*<<< orphan*/  MT ; 
 TYPE_1__* FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char SUNI_IDLE_PATTERN ; 
 unsigned char SUNI_MRI_RESET ; 
 unsigned char SUNI_MRI_TYPE ; 
 unsigned char SUNI_MRI_TYPE_SHIFT ; 
 unsigned char SUNI_MT_DS27_53 ; 
 int /*<<< orphan*/  SUNI_TACP_IUCHP_CLP ; 
 int /*<<< orphan*/  TACP_IUCHP ; 
 int /*<<< orphan*/  TACP_IUCPOP ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct atm_dev*) ; 
 int /*<<< orphan*/  suni_ops ; 

int FUNC6(struct atm_dev *dev)
{
	unsigned char mri;

	if (!(dev->phy_data = FUNC4(sizeof(struct suni_priv),GFP_KERNEL)))
		return -ENOMEM;
	FUNC1(dev)->dev = dev;

	mri = FUNC0(MRI); /* reset SUNI */
	FUNC1(dev)->type = (mri & SUNI_MRI_TYPE) >> SUNI_MRI_TYPE_SHIFT;
	FUNC2(mri | SUNI_MRI_RESET,MRI);
	FUNC2(mri,MRI);
	FUNC2((FUNC0(MT) & SUNI_MT_DS27_53),MT); /* disable all tests */
        FUNC5(dev);
	FUNC3(SUNI_TACP_IUCHP_CLP,0,SUNI_TACP_IUCHP_CLP,
	    TACP_IUCHP); /* idle cells */
	FUNC2(SUNI_IDLE_PATTERN,TACP_IUCPOP);
	dev->phy = &suni_ops;

	return 0;
}