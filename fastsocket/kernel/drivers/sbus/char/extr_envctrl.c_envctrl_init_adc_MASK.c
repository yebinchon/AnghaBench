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
struct i2c_child_t {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_child_t*,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct device_node*,char*,int*) ; 
 unsigned int shutdown_temperature ; 
 int FUNC2 (char const*) ; 
 unsigned int warning_temperature ; 

__attribute__((used)) static void FUNC3(struct i2c_child_t *pchild, struct device_node *dp)
{
	int i = 0, len;
	const char *pos;
	const unsigned int *pval;

	/* Firmware describe channels into a stream separated by a '\0'. */
	pos = FUNC1(dp, "channels-description", &len);

	while (len > 0) {
		int l = FUNC2(pos) + 1;
		FUNC0(pchild, pos, i++);
		len -= l;
		pos += l;
	}

	/* Get optional properties. */
	pval = FUNC1(dp, "warning-temp", NULL);
	if (pval)
		warning_temperature = *pval;

	pval = FUNC1(dp, "shutdown-temp", NULL);
	if (pval)
		shutdown_temperature = *pval;
}