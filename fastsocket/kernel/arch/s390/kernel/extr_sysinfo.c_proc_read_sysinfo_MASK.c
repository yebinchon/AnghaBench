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
struct sysinfo_3_2_2 {int dummy; } ;
struct sysinfo_2_2_2 {int dummy; } ;
struct sysinfo_1_2_2 {int dummy; } ;
struct sysinfo_1_1_1 {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 (struct sysinfo_1_1_1*,char*,int) ; 
 int FUNC4 (struct sysinfo_1_2_2*,char*,int) ; 
 int FUNC5 (struct sysinfo_2_2_2*,char*,int) ; 
 int FUNC6 (struct sysinfo_3_2_2*,char*,int) ; 

__attribute__((used)) static int FUNC7(char *page, char **start,
			     off_t off, int count,
			     int *eof, void *data)
{
	unsigned long info = FUNC1(GFP_KERNEL);
	int level, len;

	if (!info)
		return 0;

	len = 0;
	level = FUNC2();
	if (level >= 1)
		len = FUNC3((struct sysinfo_1_1_1 *) info, page, len);

	if (level >= 1)
		len = FUNC4((struct sysinfo_1_2_2 *) info, page, len);

	if (level >= 2)
		len = FUNC5((struct sysinfo_2_2_2 *) info, page, len);

	if (level >= 3)
		len = FUNC6((struct sysinfo_3_2_2 *) info, page, len);

	FUNC0(info);
	return len;
}