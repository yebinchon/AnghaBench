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
struct v4l2_device {int dummy; } ;
struct zoltrix {unsigned int stereo; unsigned long curfreq; int /*<<< orphan*/  curvol; scalar_t__ muted; int /*<<< orphan*/  lock; scalar_t__ io; struct v4l2_device v4l2_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct zoltrix*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct zoltrix *zol, unsigned long freq)
{
	/* tunes the radio to the desired frequency */
	struct v4l2_device *v4l2_dev = &zol->v4l2_dev;
	unsigned long long bitmask, f, m;
	unsigned int stereo = zol->stereo;
	int i;

	if (freq == 0) {
		FUNC5(v4l2_dev, "cannot set a frequency of 0.\n");
		return -EINVAL;
	}

	m = (freq / 160 - 8800) * 2;
	f = (unsigned long long)m + 0x4d1c;

	bitmask = 0xc480402c10080000ull;
	i = 45;

	FUNC1(&zol->lock);

	zol->curfreq = freq;

	FUNC3(0, zol->io);
	FUNC3(0, zol->io);
	FUNC0(zol->io + 3);            /* Zoltrix needs to be read to confirm */

	FUNC3(0x40, zol->io);
	FUNC3(0xc0, zol->io);

	bitmask = (bitmask ^ ((f & 0xff) << 47) ^ ((f & 0xff00) << 30) ^ (stereo << 31));
	while (i--) {
		if ((bitmask & 0x8000000000000000ull) != 0) {
			FUNC3(0x80, zol->io);
			FUNC4(50);
			FUNC3(0x00, zol->io);
			FUNC4(50);
			FUNC3(0x80, zol->io);
			FUNC4(50);
		} else {
			FUNC3(0xc0, zol->io);
			FUNC4(50);
			FUNC3(0x40, zol->io);
			FUNC4(50);
			FUNC3(0xc0, zol->io);
			FUNC4(50);
		}
		bitmask *= 2;
	}
	/* termination sequence */
	FUNC3(0x80, zol->io);
	FUNC3(0xc0, zol->io);
	FUNC3(0x40, zol->io);
	FUNC4(1000);
	FUNC0(zol->io + 2);

	FUNC4(1000);

	if (zol->muted) {
		FUNC3(0, zol->io);
		FUNC3(0, zol->io);
		FUNC0(zol->io + 3);
		FUNC4(1000);
	}

	FUNC2(&zol->lock);

	if (!zol->muted)
		FUNC6(zol, zol->curvol);
	return 0;
}