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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct claw_privbk {struct claw_env* p_env; } ;
struct claw_env {int* host_name; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int*) ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 int MAX_NAME_LEN ; 
 struct claw_privbk* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  FUNC4 (int*,char const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
	 const char *buf, size_t count)
{
	struct claw_privbk *priv;
	struct claw_env *  p_env;

	priv = FUNC2(dev);
	if (!priv)
		return -ENODEV;
	p_env = priv->p_env;
	if (count > MAX_NAME_LEN+1)
		return -EINVAL;
	FUNC3(p_env->host_name, 0x20, MAX_NAME_LEN);
	FUNC4(p_env->host_name,buf, count);
	p_env->host_name[count-1] = 0x20;  /* clear extra 0x0a */
	p_env->host_name[MAX_NAME_LEN] = 0x00;
	FUNC0(2, setup, "HstnSet");
	FUNC1(2, setup, "%s", p_env->host_name);

	return count;
}