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
typedef  int /*<<< orphan*/  uid_t ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 struct cred* FUNC1 () ; 

__attribute__((used)) static int FUNC2(uid_t uid, gid_t gid)
{
	struct cred *new;

	new = FUNC1();
	if (!new)
		return -ENOMEM;

	new->fsuid = uid;
	new->fsgid = gid;

	FUNC0(new);

	return 0;
}