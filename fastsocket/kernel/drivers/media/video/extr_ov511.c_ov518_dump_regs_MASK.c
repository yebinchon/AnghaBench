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
	FUNC0(&ov->dev->dev, "VIDEO MODE REGS\n");
	FUNC1(ov, 0x20, 0x2f);
	FUNC0(&ov->dev->dev, "DATA PUMP AND SNAPSHOT REGS\n");
	FUNC1(ov, 0x30, 0x3f);
	FUNC0(&ov->dev->dev, "I2C REGS\n");
	FUNC1(ov, 0x40, 0x4f);
	FUNC0(&ov->dev->dev, "SYSTEM CONTROL AND VENDOR REGS\n");
	FUNC1(ov, 0x50, 0x5f);
	FUNC0(&ov->dev->dev, "60 - 6F\n");
	FUNC1(ov, 0x60, 0x6f);
	FUNC0(&ov->dev->dev, "70 - 7F\n");
	FUNC1(ov, 0x70, 0x7f);
	FUNC0(&ov->dev->dev, "Y QUANTIZATION TABLE\n");
	FUNC1(ov, 0x80, 0x8f);
	FUNC0(&ov->dev->dev, "UV QUANTIZATION TABLE\n");
	FUNC1(ov, 0x90, 0x9f);
	FUNC0(&ov->dev->dev, "A0 - BF\n");
	FUNC1(ov, 0xa0, 0xbf);
	FUNC0(&ov->dev->dev, "CBR\n");
	FUNC1(ov, 0xc0, 0xcf);
}