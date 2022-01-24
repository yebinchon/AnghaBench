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
struct qcam_device {int /*<<< orphan*/  pport; scalar_t__ bidirectional; } ;

/* Variables and functions */
 scalar_t__ force_rgb ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct qcam_device*,int) ; 
 scalar_t__ FUNC3 (struct qcam_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qcam_device*,int) ; 

__attribute__((used)) static unsigned int FUNC5(struct qcam_device *q, unsigned char *buf, unsigned int nbytes)
{
	unsigned int bytes = 0;

	FUNC4(q, 0);
	if (q->bidirectional)
	{
		/* It's a bidirectional port */
		while (bytes < nbytes)
		{
			unsigned int lo1, hi1, lo2, hi2;
			unsigned char r, g, b;

			if (FUNC3(q, 1)) return bytes;
			lo1 = FUNC0(q->pport) >> 1;
			hi1 = ((FUNC1(q->pport) >> 3) & 0x1f) ^ 0x10;
			FUNC4(q, 1);
			if (FUNC3(q, 0)) return bytes;
			lo2 = FUNC0(q->pport) >> 1;
			hi2 = ((FUNC1(q->pport) >> 3) & 0x1f) ^ 0x10;
			FUNC4(q, 0);
			r = (lo1 | ((hi1 & 1)<<7));
			g = ((hi1 & 0x1e)<<3) | ((hi2 & 0x1e)>>1);
			b = (lo2 | ((hi2 & 1)<<7));
			if (force_rgb) {
				buf[bytes++] = r;
				buf[bytes++] = g;
				buf[bytes++] = b;
			} else {
				buf[bytes++] = b;
				buf[bytes++] = g;
				buf[bytes++] = r;
			}
		}
	}
	else
	{
		/* It's a unidirectional port */
		int i = 0, n = bytes;
		unsigned char rgb[3];

		while (bytes < nbytes)
		{
			unsigned int hi, lo;

			if (FUNC2(q, 1)) return bytes;
			hi = (FUNC1(q->pport) & 0xf0);
			FUNC4(q, 1);
			if (FUNC2(q, 0)) return bytes;
			lo = (FUNC1(q->pport) & 0xf0);
			FUNC4(q, 0);
			/* flip some bits */
			rgb[(i = bytes++ % 3)] = (hi | (lo >> 4)) ^ 0x88;
			if (i >= 2) {
get_fragment:
				if (force_rgb) {
					buf[n++] = rgb[0];
					buf[n++] = rgb[1];
					buf[n++] = rgb[2];
				} else {
					buf[n++] = rgb[2];
					buf[n++] = rgb[1];
					buf[n++] = rgb[0];
				}
			}
		}
		if (i) {
			i = 0;
			goto get_fragment;
		}
	}
	return bytes;
}