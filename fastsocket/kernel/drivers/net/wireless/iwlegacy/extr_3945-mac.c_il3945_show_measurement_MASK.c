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
typedef  int u32 ;
struct il_spectrum_notification {int dummy; } ;
struct il_priv {int measurement_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  measure_report; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  measure_report ;

/* Variables and functions */
 int MEASUREMENT_READY ; 
 int PAGE_SIZE ; 
 struct il_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_spectrum_notification*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *d, struct device_attribute *attr,
			char *buf)
{
	struct il_priv *il = FUNC0(d);
	struct il_spectrum_notification measure_report;
	u32 size = sizeof(measure_report), len = 0, ofs = 0;
	u8 *data = (u8 *) &measure_report;
	unsigned long flags;

	FUNC4(&il->lock, flags);
	if (!(il->measurement_status & MEASUREMENT_READY)) {
		FUNC5(&il->lock, flags);
		return 0;
	}
	FUNC2(&measure_report, &il->measure_report, size);
	il->measurement_status = 0;
	FUNC5(&il->lock, flags);

	while (size && PAGE_SIZE - len) {
		FUNC1(data + ofs, size, 16, 1, buf + len,
				   PAGE_SIZE - len, 1);
		len = FUNC6(buf);
		if (PAGE_SIZE - len)
			buf[len++] = '\n';

		ofs += 16;
		size -= FUNC3(size, 16U);
	}

	return len;
}