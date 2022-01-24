#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct cpufreq_frequency_table {int dummy; } ;
struct TYPE_3__ {int frequency; size_t index; } ;

/* Variables and functions */
 unsigned int CPUFREQ_TABLE_END ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int,int,unsigned int,size_t,int,int) ; 
 int* fid_codes ; 
 int fsb ; 
 int have_a0 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned int maximum_speed ; 
 unsigned int minimum_speed ; 
 int* mobile_vid_table ; 
 int number_scales ; 
 TYPE_1__* powernow_table ; 

__attribute__((used)) static int FUNC3(unsigned char *pst)
{
	unsigned int j;
	unsigned int speed;
	u8 fid, vid;

	powernow_table = FUNC2((sizeof(struct cpufreq_frequency_table) *
				(number_scales + 1)), GFP_KERNEL);
	if (!powernow_table)
		return -ENOMEM;

	for (j = 0 ; j < number_scales; j++) {
		fid = *pst++;

		powernow_table[j].frequency = (fsb * fid_codes[fid]) / 10;
		powernow_table[j].index = fid; /* lower 8 bits */

		speed = powernow_table[j].frequency;

		if ((fid_codes[fid] % 10) == 5) {
#ifdef CONFIG_X86_POWERNOW_K7_ACPI
			if (have_a0 == 1)
				invalidate_entry(j);
#endif
		}

		if (speed < minimum_speed)
			minimum_speed = speed;
		if (speed > maximum_speed)
			maximum_speed = speed;

		vid = *pst++;
		powernow_table[j].index |= (vid << 8); /* upper 8 bits */

		FUNC0("   FID: 0x%x (%d.%dx [%dMHz])  "
			 "VID: 0x%x (%d.%03dV)\n", fid, fid_codes[fid] / 10,
			 fid_codes[fid] % 10, speed/1000, vid,
			 mobile_vid_table[vid]/1000,
			 mobile_vid_table[vid]%1000);
	}
	powernow_table[number_scales].frequency = CPUFREQ_TABLE_END;
	powernow_table[number_scales].index = 0;

	return 0;
}