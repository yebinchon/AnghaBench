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
struct sd {int bridge; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
#define  BRIDGE_SPCA504 130 
#define  BRIDGE_SPCA504C 129 
#define  BRIDGE_SPCA536 128 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int pollreg = 1;

	FUNC1(gspca_dev);
	FUNC3(gspca_dev);
	FUNC2(gspca_dev);

	switch (sd->bridge) {
	case BRIDGE_SPCA504:
	case BRIDGE_SPCA504C:
		pollreg = 0;
		/* fall thru */
	default:
/*	case BRIDGE_SPCA533: */
/*	case BRIDGE_SPCA504B: */
		FUNC0(gspca_dev, 0, 0x21ad, 0x00);	/* hue */
		FUNC0(gspca_dev, 0, 0x21ac, 0x01);	/* sat/hue */
		FUNC0(gspca_dev, 0, 0x21a3, 0x00);	/* gamma */
		break;
	case BRIDGE_SPCA536:
		FUNC0(gspca_dev, 0, 0x20f5, 0x40);
		FUNC0(gspca_dev, 0, 0x20f4, 0x01);
		FUNC0(gspca_dev, 0, 0x2089, 0x00);
		break;
	}
	if (pollreg)
		FUNC4(gspca_dev);
}