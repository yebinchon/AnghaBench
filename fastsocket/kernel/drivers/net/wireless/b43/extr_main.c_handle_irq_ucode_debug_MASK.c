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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  opensource; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ fw; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  B43_DEBUG ; 
 int /*<<< orphan*/  B43_DEBUGIRQ_ACK ; 
#define  B43_DEBUGIRQ_DUMP_REGS 131 
#define  B43_DEBUGIRQ_DUMP_SHM 130 
#define  B43_DEBUGIRQ_MARKER 129 
#define  B43_DEBUGIRQ_PANIC 128 
 unsigned int B43_DEBUGIRQ_REASON_REG ; 
 unsigned int B43_MARKER_ID_REG ; 
 unsigned int B43_MARKER_LINE_REG ; 
 int /*<<< orphan*/  B43_SHM_SCRATCH ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 char* KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void FUNC10(struct b43_wldev *dev)
{
	unsigned int i, cnt;
	u16 reason, marker_id, marker_line;
	__le16 *buf;

	/* The proprietary firmware doesn't have this IRQ. */
	if (!dev->fw.opensource)
		return;

	/* Read the register that contains the reason code for this IRQ. */
	reason = FUNC1(dev, B43_SHM_SCRATCH, B43_DEBUGIRQ_REASON_REG);

	switch (reason) {
	case B43_DEBUGIRQ_PANIC:
		FUNC0(dev);
		break;
	case B43_DEBUGIRQ_DUMP_SHM:
		if (!B43_DEBUG)
			break; /* Only with driver debugging enabled. */
		buf = FUNC7(4096, GFP_ATOMIC);
		if (!buf) {
			FUNC3(dev->wl, "SHM-dump: Failed to allocate memory\n");
			goto out;
		}
		for (i = 0; i < 4096; i += 2) {
			u16 tmp = FUNC1(dev, B43_SHM_SHARED, i);
			buf[i / 2] = FUNC5(tmp);
		}
		FUNC4(dev->wl, "Shared memory dump:\n");
		FUNC8(KERN_INFO, "", DUMP_PREFIX_OFFSET,
			       16, 2, buf, 4096, 1);
		FUNC6(buf);
		break;
	case B43_DEBUGIRQ_DUMP_REGS:
		if (!B43_DEBUG)
			break; /* Only with driver debugging enabled. */
		FUNC4(dev->wl, "Microcode register dump:\n");
		for (i = 0, cnt = 0; i < 64; i++) {
			u16 tmp = FUNC1(dev, B43_SHM_SCRATCH, i);
			if (cnt == 0)
				FUNC9(KERN_INFO);
			FUNC9("r%02u: 0x%04X  ", i, tmp);
			cnt++;
			if (cnt == 6) {
				FUNC9("\n");
				cnt = 0;
			}
		}
		FUNC9("\n");
		break;
	case B43_DEBUGIRQ_MARKER:
		if (!B43_DEBUG)
			break; /* Only with driver debugging enabled. */
		marker_id = FUNC1(dev, B43_SHM_SCRATCH,
					   B43_MARKER_ID_REG);
		marker_line = FUNC1(dev, B43_SHM_SCRATCH,
					     B43_MARKER_LINE_REG);
		FUNC4(dev->wl, "The firmware just executed the MARKER(%u) "
			"at line number %u\n",
			marker_id, marker_line);
		break;
	default:
		FUNC3(dev->wl, "Debug-IRQ triggered for unknown reason: %u\n",
		       reason);
	}
out:
	/* Acknowledge the debug-IRQ, so the firmware can continue. */
	FUNC2(dev, B43_SHM_SCRATCH,
			B43_DEBUGIRQ_REASON_REG, B43_DEBUGIRQ_ACK);
}