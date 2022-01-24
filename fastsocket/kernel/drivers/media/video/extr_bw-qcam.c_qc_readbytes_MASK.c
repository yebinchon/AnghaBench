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
struct qcam_device {int port_mode; unsigned int saved_bits; int /*<<< orphan*/  bpp; } ;

/* Variables and functions */
#define  QC_BIDIR 129 
 int QC_MODE_MASK ; 
#define  QC_UNIDIR 128 
 int FUNC0 (struct qcam_device*,int) ; 
 int FUNC1 (struct qcam_device*,int) ; 
 int FUNC2 (struct qcam_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcam_device*,int) ; 

__attribute__((used)) static inline int FUNC4(struct qcam_device *q, char buffer[])
{
	int ret=1;
	unsigned int hi, lo;
	unsigned int hi2, lo2;
	static int state;

	if (buffer == NULL)
	{
		state = 0;
		return 0;
	}

	switch (q->port_mode & QC_MODE_MASK)
	{
		case QC_BIDIR:		/* Bi-directional Port */
			FUNC3(q, 0x26);
			lo = (FUNC1(q, 1) >> 1);
			hi = (FUNC2(q) >> 3) & 0x1f;
			FUNC3(q, 0x2e);
			lo2 = (FUNC1(q, 0) >> 1);
			hi2 = (FUNC2(q) >> 3) & 0x1f;
			switch (q->bpp)
			{
				case 4:
					buffer[0] = lo & 0xf;
					buffer[1] = ((lo & 0x70) >> 4) | ((hi & 1) << 3);
					buffer[2] = (hi & 0x1e) >> 1;
					buffer[3] = lo2 & 0xf;
					buffer[4] = ((lo2 & 0x70) >> 4) | ((hi2 & 1) << 3);
					buffer[5] = (hi2 & 0x1e) >> 1;
					ret = 6;
					break;
				case 6:
					buffer[0] = lo & 0x3f;
					buffer[1] = ((lo & 0x40) >> 6) | (hi << 1);
					buffer[2] = lo2 & 0x3f;
					buffer[3] = ((lo2 & 0x40) >> 6) | (hi2 << 1);
					ret = 4;
					break;
			}
			break;

		case QC_UNIDIR:	/* Unidirectional Port */
			FUNC3(q, 6);
			lo = (FUNC0(q, 1) & 0xf0) >> 4;
			FUNC3(q, 0xe);
			hi = (FUNC0(q, 0) & 0xf0) >> 4;

			switch (q->bpp)
			{
				case 4:
					buffer[0] = lo;
					buffer[1] = hi;
					ret = 2;
					break;
				case 6:
					switch (state)
					{
						case 0:
							buffer[0] = (lo << 2) | ((hi & 0xc) >> 2);
							q->saved_bits = (hi & 3) << 4;
							state = 1;
							ret = 1;
							break;
						case 1:
							buffer[0] = lo | q->saved_bits;
							q->saved_bits = hi << 2;
							state = 2;
							ret = 1;
							break;
						case 2:
							buffer[0] = ((lo & 0xc) >> 2) | q->saved_bits;
							buffer[1] = ((lo & 3) << 4) | hi;
							state = 0;
							ret = 2;
							break;
					}
					break;
			}
			break;
	}
	return ret;
}