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
typedef  int u32 ;
struct nvt_dev {int pkts; int* buf; } ;

/* Variables and functions */
 int BUF_LEN_MASK ; 
 int BUF_PULSE_BIT ; 
 int /*<<< orphan*/  CIR_FCCH ; 
 int /*<<< orphan*/  CIR_FCCL ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int MAX_CARRIER ; 
 int MIN_CARRIER ; 
 int FUNC0 (int) ; 
 int SAMPLE_PERIOD ; 
 int FUNC1 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static u32 FUNC4(struct nvt_dev *nvt)
{
	u32 count, carrier, duration = 0;
	int i;

	count = FUNC1(nvt, CIR_FCCL) |
		FUNC1(nvt, CIR_FCCH) << 8;

	for (i = 0; i < nvt->pkts; i++) {
		if (nvt->buf[i] & BUF_PULSE_BIT)
			duration += nvt->buf[i] & BUF_LEN_MASK;
	}

	duration *= SAMPLE_PERIOD;

	if (!count || !duration) {
		FUNC3(KERN_NOTICE, "Unable to determine carrier! (c:%u, d:%u)",
		       count, duration);
		return 0;
	}

	carrier = FUNC0(count) / duration;

	if ((carrier > MAX_CARRIER) || (carrier < MIN_CARRIER))
		FUNC2("WTF? Carrier frequency out of range!");

	FUNC2("Carrier frequency: %u (count %u, duration %u)",
		carrier, count, duration);

	return carrier;
}