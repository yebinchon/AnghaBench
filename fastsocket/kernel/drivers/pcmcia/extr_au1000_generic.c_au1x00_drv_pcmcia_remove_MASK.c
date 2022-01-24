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
typedef  int u32 ;
struct skt_dev_info {int nskt; } ;
struct platform_device {int dummy; } ;
struct au1000_pcmcia_socket {int /*<<< orphan*/ * virt_io; TYPE_1__* ops; int /*<<< orphan*/  socket; int /*<<< orphan*/  poll_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* hw_shutdown ) (struct au1000_pcmcia_socket*) ;} ;

/* Variables and functions */
 struct au1000_pcmcia_socket* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct au1000_pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dead_socket ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct skt_dev_info*) ; 
 scalar_t__ mips_io_port_base ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcmcia_sockets_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct skt_dev_info* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct au1000_pcmcia_socket*) ; 

int FUNC12(struct platform_device *dev)
{
	struct skt_dev_info *sinfo = FUNC9(dev);
	int i;

	FUNC6(&pcmcia_sockets_lock);
	FUNC10(dev, NULL);

	for (i = 0; i < sinfo->nskt; i++) {
		struct au1000_pcmcia_socket *skt = FUNC0(i);

		FUNC2(&skt->poll_timer);
		FUNC8(&skt->socket);
		FUNC3();
		skt->ops->hw_shutdown(skt);
		FUNC1(skt, &dead_socket);
		FUNC4(skt->virt_io + (u32)mips_io_port_base);
		skt->virt_io = NULL;
	}

	FUNC5(sinfo);
	FUNC7(&pcmcia_sockets_lock);
	return 0;
}