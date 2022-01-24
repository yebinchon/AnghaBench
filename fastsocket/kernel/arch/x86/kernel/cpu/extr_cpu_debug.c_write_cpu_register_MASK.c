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
typedef  int /*<<< orphan*/  u64 ;
struct cpu_private {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPU_TSS_BIT ; 
 int EPERM ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cpu_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cpu_private *priv, const char *buf)
{
	int ret = -EPERM;
	u64 val;

	ret = FUNC0(buf, 0, &val);
	if (ret < 0)
		return ret;

	/* Supporting only MSRs */
	if (priv->type < CPU_TSS_BIT)
		return FUNC1(priv, val);

	return ret;
}