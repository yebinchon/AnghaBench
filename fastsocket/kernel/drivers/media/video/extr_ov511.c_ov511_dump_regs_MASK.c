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
struct usb_ov511 {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ov511*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct usb_ov511 *ov)
{
	FUNC0(&ov->dev->dev, "CAMERA INTERFACE REGS\n");
	FUNC1(ov, 0x10, 0x1f);
	FUNC0(&ov->dev->dev, "DRAM INTERFACE REGS\n");
	FUNC1(ov, 0x20, 0x23);
	FUNC0(&ov->dev->dev, "ISO FIFO REGS\n");
	FUNC1(ov, 0x30, 0x31);
	FUNC0(&ov->dev->dev, "PIO REGS\n");
	FUNC1(ov, 0x38, 0x39);
	FUNC1(ov, 0x3e, 0x3e);
	FUNC0(&ov->dev->dev, "I2C REGS\n");
	FUNC1(ov, 0x40, 0x49);
	FUNC0(&ov->dev->dev, "SYSTEM CONTROL REGS\n");
	FUNC1(ov, 0x50, 0x55);
	FUNC1(ov, 0x5e, 0x5f);
	FUNC0(&ov->dev->dev, "OmniCE REGS\n");
	FUNC1(ov, 0x70, 0x79);
	/* NOTE: Quantization tables are not readable. You will get the value
	 * in reg. 0x79 for every table register */
	FUNC1(ov, 0x80, 0x9f);
	FUNC1(ov, 0xa0, 0xbf);

}