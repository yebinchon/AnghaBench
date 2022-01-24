#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct tun_struct {TYPE_1__ socket; struct tun_file* tfile; } ;
struct tun_file {int /*<<< orphan*/  count; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tun_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct tun_struct* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct tun_struct *tun = FUNC2(dev);
	struct tun_file *tfile = tun->tfile;

	/* Inform the methods they need to stop using the dev.
	 */
	if (tfile) {
		FUNC3(&tun->socket.wait);
		if (FUNC1(&tfile->count))
			FUNC0(tun);
	}
}