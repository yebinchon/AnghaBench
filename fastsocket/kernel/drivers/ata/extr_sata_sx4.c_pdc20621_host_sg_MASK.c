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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u32 ;
struct ata_taskfile {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int ATA_PRD_EOT ; 
 unsigned int PDC_20621_DIMM_BASE ; 
 unsigned int PDC_20621_DIMM_DATA ; 
 unsigned int PDC_DIMM_DATA_STEP ; 
 int PDC_DIMM_HPKT_PRD ; 
 unsigned int PDC_DIMM_WINDOW_STEP ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct ata_taskfile *tf, u8 *buf,
				    unsigned int portno,
					    unsigned int total_len)
{
	u32 addr;
	unsigned int dw = PDC_DIMM_HPKT_PRD >> 2;
	__le32 *buf32 = (__le32 *) buf;

	/* output Host DMA packet S/G table */
	addr = PDC_20621_DIMM_BASE + PDC_20621_DIMM_DATA +
	       (PDC_DIMM_DATA_STEP * portno);

	buf32[dw] = FUNC1(addr);
	buf32[dw + 1] = FUNC1(total_len | ATA_PRD_EOT);

	FUNC0("HOST PSG @ %x == (0x%x, 0x%x)\n",
		PDC_20621_DIMM_BASE +
		       (PDC_DIMM_WINDOW_STEP * portno) +
		       PDC_DIMM_HPKT_PRD,
		buf32[dw], buf32[dw + 1]);
}