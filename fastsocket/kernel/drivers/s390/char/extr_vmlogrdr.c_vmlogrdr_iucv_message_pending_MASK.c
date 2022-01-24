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
struct vmlogrdr_priv_t {int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  receive_ready; int /*<<< orphan*/  local_interrupt_buffer; } ;
struct iucv_path {struct vmlogrdr_priv_t* private; } ;
struct iucv_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iucv_message*,int) ; 
 int /*<<< orphan*/  read_wait_queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iucv_path *path,
					  struct iucv_message *msg)
{
	struct vmlogrdr_priv_t * logptr = path->private;

	/*
	 * This function is the bottom half so it should be quick.
	 * Copy the external interrupt data into our local eib and increment
	 * the usage count
	 */
	FUNC2(&logptr->priv_lock);
	FUNC1(&logptr->local_interrupt_buffer, msg, sizeof(*msg));
	FUNC0(&logptr->receive_ready);
	FUNC3(&logptr->priv_lock);
	FUNC4(&read_wait_queue);
}