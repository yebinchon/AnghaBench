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
struct TYPE_3__ {char* member_0; int member_2; int /*<<< orphan*/  option_value; int /*<<< orphan*/ * option_flag; int /*<<< orphan*/  option_name; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ IPS_OPTION ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int IPS_IOCTL_SIZE ; 
 int /*<<< orphan*/  MaxLiteCmds ; 
 int /*<<< orphan*/  ips_cd_boot ; 
 int /*<<< orphan*/  ips_force_i2o ; 
 int /*<<< orphan*/  ips_force_memio ; 
 int /*<<< orphan*/  ips_ioctlsize ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int
FUNC6(char *ips_str)
{

	int i;
	char *key;
	char *value;
	IPS_OPTION options[] = {
		{"noi2o", ips_force_i2o, 0},
		{"nommap", ips_force_memio, 0},
		{"ioctlsize", ips_ioctlsize, IPS_IOCTL_SIZE},
		{"cdboot", ips_cd_boot, 0},
		{"maxcmds", MaxLiteCmds, 32},
	};

	/* Don't use strtok() anymore ( if 2.4 Kernel or beyond ) */
	/* Search for value */
	while ((key = FUNC5(&ips_str, ",."))) {
		if (!*key)
			continue;
		value = FUNC2(key, ':');
		if (value)
			*value++ = '\0';
		/*
		 * We now have key/value pairs.
		 * Update the variables
		 */
		for (i = 0; i < FUNC0(options); i++) {
			if (FUNC4
			    (key, options[i].option_name,
			     FUNC3(options[i].option_name)) == 0) {
				if (value)
					*options[i].option_flag =
					    FUNC1(value, NULL, 0);
				else
					*options[i].option_flag =
					    options[i].option_value;
				break;
			}
		}
	}

	return (1);
}