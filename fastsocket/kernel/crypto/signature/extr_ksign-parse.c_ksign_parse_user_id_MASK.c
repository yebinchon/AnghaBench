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
typedef  int /*<<< orphan*/  uint8_t ;
struct ksign_user_id {int len; scalar_t__* name; } ;
typedef  int (* ksign_user_id_actor_t ) (struct ksign_user_id*,void*) ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ksign_user_id* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksign_user_id*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(const uint8_t *datap, const uint8_t *endp,
			       ksign_user_id_actor_t uidfnx, void *fnxdata)
{
	struct ksign_user_id *uid;
	int rc = 0;
	int n;

	if (!uidfnx)
		return 0;

	n = endp - datap;
	uid = FUNC0(sizeof(*uid) + n + 1, GFP_KERNEL);
	if (!uid)
		return -ENOMEM;
	uid->len = n;

	FUNC2(uid->name, datap, n);
	uid->name[n] = 0;

	rc = uidfnx(uid, fnxdata);
	if (rc == 0)
		return rc; /* uidfnx keeps the record */
	if (rc == 1)
		rc = 0;

	FUNC1(uid);
	return rc;
}