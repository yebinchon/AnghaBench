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
struct ata_port {int dummy; } ;
struct ata_device {size_t dma_mode; } ;

/* Variables and functions */
#define  XFER_PIO_0 130 
#define  XFER_PIO_3 129 
#define  XFER_PIO_4 128 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct ata_device*,int const) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_device *adev)
{
	static const int dma_xlate[3] = { XFER_PIO_0, XFER_PIO_3, XFER_PIO_4 };
	FUNC1(ap, adev, dma_xlate[adev->dma_mode]);
	FUNC0(ap, adev);
}