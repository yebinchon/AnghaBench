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
typedef  int /*<<< orphan*/  u32 ;
struct tmComResTSFormatDescrHeader {scalar_t__ bStrideLength; scalar_t__ bPacketLength; scalar_t__ bDataOffset; scalar_t__ bFormatIndex; } ;
struct TYPE_2__ {int buffercount; scalar_t__ BARLocation; } ;
struct saa7164_port {scalar_t__ nr; TYPE_1__ hwcfg; scalar_t__ bufptr64; scalar_t__ bufptr32h; scalar_t__ bufptr32l; scalar_t__ bufoffset; scalar_t__ bufsize; scalar_t__ pitch; scalar_t__ bufcounter; } ;
struct saa7164_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGLVL_API ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC1(struct saa7164_dev *dev,
	struct saa7164_port *port,
	struct tmComResTSFormatDescrHeader *tsfmt)
{
	FUNC0(DBGLVL_API, "    bFormatIndex = 0x%x\n", tsfmt->bFormatIndex);
	FUNC0(DBGLVL_API, "    bDataOffset  = 0x%x\n", tsfmt->bDataOffset);
	FUNC0(DBGLVL_API, "    bPacketLength= 0x%x\n", tsfmt->bPacketLength);
	FUNC0(DBGLVL_API, "    bStrideLength= 0x%x\n", tsfmt->bStrideLength);
	FUNC0(DBGLVL_API, "    bguid        = (....)\n");

	/* Cache the hardware configuration in the port */

	port->bufcounter = port->hwcfg.BARLocation;
	port->pitch = port->hwcfg.BARLocation + (2 * sizeof(u32));
	port->bufsize = port->hwcfg.BARLocation + (3 * sizeof(u32));
	port->bufoffset = port->hwcfg.BARLocation + (4 * sizeof(u32));
	port->bufptr32l = port->hwcfg.BARLocation +
		(4 * sizeof(u32)) +
		(sizeof(u32) * port->hwcfg.buffercount) + sizeof(u32);
	port->bufptr32h = port->hwcfg.BARLocation +
		(4 * sizeof(u32)) +
		(sizeof(u32) * port->hwcfg.buffercount);
	port->bufptr64 = port->hwcfg.BARLocation +
		(4 * sizeof(u32)) +
		(sizeof(u32) * port->hwcfg.buffercount);
	FUNC0(DBGLVL_API, "   = port->hwcfg.BARLocation = 0x%x\n",
		port->hwcfg.BARLocation);

	FUNC0(DBGLVL_API, "   = VS_FORMAT_MPEGTS (becomes dev->ts[%d])\n",
		port->nr);

	return 0;
}