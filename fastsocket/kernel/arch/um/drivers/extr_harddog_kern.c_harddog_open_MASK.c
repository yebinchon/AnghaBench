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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  harddog_in_fd ; 
 int /*<<< orphan*/  harddog_out_fd ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 int FUNC3 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int timer_alive ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	int err = -EBUSY;
	char *sock = NULL;

	FUNC1();
	FUNC4(&lock);
	if(timer_alive)
		goto err;
#ifdef CONFIG_WATCHDOG_NOWAYOUT
	__module_get(THIS_MODULE);
#endif

#ifdef CONFIG_MCONSOLE
	sock = mconsole_notify_socket();
#endif
	err = FUNC6(&harddog_in_fd, &harddog_out_fd, sock);
	if(err)
		goto err;

	timer_alive = 1;
	FUNC5(&lock);
	FUNC7();
	return FUNC3(inode, file);
err:
	FUNC5(&lock);
	FUNC7();
	return err;
}