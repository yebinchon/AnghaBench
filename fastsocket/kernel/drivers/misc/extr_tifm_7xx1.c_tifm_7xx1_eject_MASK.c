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
struct tifm_dev {int socket_id; } ;
struct tifm_adapter {int socket_change_set; int /*<<< orphan*/  lock; int /*<<< orphan*/  media_switcher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tifm_adapter *fm, struct tifm_dev *sock)
{
	unsigned long flags;

	FUNC0(&fm->lock, flags);
	fm->socket_change_set |= 1 << sock->socket_id;
	FUNC2(&fm->media_switcher);
	FUNC1(&fm->lock, flags);
}