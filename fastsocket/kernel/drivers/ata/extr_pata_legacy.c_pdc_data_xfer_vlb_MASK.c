#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data_addr; int /*<<< orphan*/  nsect_addr; } ;
struct ata_port {int pflags; TYPE_2__ ioaddr; } ;
struct ata_device {int /*<<< orphan*/  id; TYPE_1__* link; } ;
typedef  unsigned char __le32 ;
struct TYPE_3__ {struct ata_port* ap; } ;

/* Variables and functions */
 int ATA_PFLAG_PIO32 ; 
 int READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct ata_device*,unsigned char*,unsigned int,int) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static unsigned int FUNC13(struct ata_device *dev,
			unsigned char *buf, unsigned int buflen, int rw)
{
	int slop = buflen & 3;
	struct ata_port *ap = dev->link->ap;

	/* 32bit I/O capable *and* we need to write a whole number of dwords */
	if (FUNC0(dev->id) && (slop == 0 || slop == 3)
					&& (ap->pflags & ATA_PFLAG_PIO32)) {
		unsigned long flags;

		FUNC10(flags);

		/* Perform the 32bit I/O synchronization sequence */
		FUNC5(ap->ioaddr.nsect_addr);
		FUNC5(ap->ioaddr.nsect_addr);
		FUNC5(ap->ioaddr.nsect_addr);

		/* Now the data */
		if (rw == READ)
			FUNC4(ap->ioaddr.data_addr, buf, buflen >> 2);
		else
			FUNC7(ap->ioaddr.data_addr, buf, buflen >> 2);

		if (FUNC12(slop)) {
			__le32 pad;
			if (rw == READ) {
				pad = FUNC2(FUNC3(ap->ioaddr.data_addr));
				FUNC11(buf + buflen - slop, &pad, slop);
			} else {
				FUNC11(&pad, buf + buflen - slop, slop);
				FUNC6(FUNC8(pad), ap->ioaddr.data_addr);
			}
			buflen += 4 - slop;
		}
		FUNC9(flags);
	} else
		buflen = FUNC1(dev, buf, buflen, rw);

	return buflen;
}