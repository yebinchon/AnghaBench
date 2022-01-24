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
struct viosrp_crq {int valid; int format; } ;
struct vio_port {TYPE_1__* dma_dev; } ;
struct srp_target {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
#define  VIOSRP_AIX_FORMAT 133 
#define  VIOSRP_INLINE_FORMAT 132 
#define  VIOSRP_LINUX_FORMAT 131 
#define  VIOSRP_MAD_FORMAT 130 
#define  VIOSRP_OS400_FORMAT 129 
#define  VIOSRP_SRP_FORMAT 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct viosrp_crq*,struct srp_target*) ; 
 struct vio_port* FUNC4 (struct srp_target*) ; 

__attribute__((used)) static void FUNC5(struct viosrp_crq *crq,	struct srp_target *target)
{
	struct vio_port *vport = FUNC4(target);
	FUNC0("%x %x\n", crq->valid, crq->format);

	switch (crq->valid) {
	case 0xC0:
		/* initialization */
		switch (crq->format) {
		case 0x01:
			FUNC2(vport->dma_dev->unit_address,
				   0xC002000000000000, 0);
			break;
		case 0x02:
			break;
		default:
			FUNC1("Unknown format %u\n", crq->format);
		}
		break;
	case 0xFF:
		/* transport event */
		break;
	case 0x80:
		/* real payload */
		switch (crq->format) {
		case VIOSRP_SRP_FORMAT:
		case VIOSRP_MAD_FORMAT:
			FUNC3(crq, target);
			break;
		case VIOSRP_OS400_FORMAT:
		case VIOSRP_AIX_FORMAT:
		case VIOSRP_LINUX_FORMAT:
		case VIOSRP_INLINE_FORMAT:
			FUNC1("Unsupported format %u\n", crq->format);
			break;
		default:
			FUNC1("Unknown format %u\n", crq->format);
		}
		break;
	default:
		FUNC1("unknown message type 0x%02x!?\n", crq->valid);
	}
}