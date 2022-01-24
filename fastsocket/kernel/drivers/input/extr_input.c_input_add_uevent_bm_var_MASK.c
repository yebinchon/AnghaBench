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
struct kobj_uevent_env {int buflen; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned long*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kobj_uevent_env *env,
				   const char *name, unsigned long *bitmap, int max)
{
	int len;

	if (FUNC0(env, "%s=", name))
		return -ENOMEM;

	len = FUNC1(&env->buf[env->buflen - 1],
				 sizeof(env->buf) - env->buflen,
				 bitmap, max, 0);
	if (len >= (sizeof(env->buf) - env->buflen))
		return -ENOMEM;

	env->buflen += len;
	return 0;
}