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
struct vmlogrdr_priv_t {int iucv_path_severed; int /*<<< orphan*/  priv_lock; scalar_t__ connection_established; int /*<<< orphan*/ * path; } ;
struct iucv_path {struct vmlogrdr_priv_t* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  conn_wait_queue ; 
 int /*<<< orphan*/  FUNC0 (struct iucv_path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iucv_path*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_wait_queue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iucv_path *path, u8 ipuser[16])
{
	struct vmlogrdr_priv_t * logptr = path->private;
	u8 reason = (u8) ipuser[8];

	FUNC2("vmlogrdr: connection severed with reason %i\n", reason);

	FUNC0(path, NULL);
	FUNC1(path);
	logptr->path = NULL;

	FUNC3(&logptr->priv_lock);
	logptr->connection_established = 0;
	logptr->iucv_path_severed = 1;
	FUNC4(&logptr->priv_lock);

	FUNC5(&conn_wait_queue);
	/* just in case we're sleeping waiting for a record */
	FUNC6(&read_wait_queue);
}