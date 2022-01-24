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
struct soc_pcmcia_socket {int /*<<< orphan*/  res_skt; int /*<<< orphan*/  res_io; int /*<<< orphan*/  res_mem; int /*<<< orphan*/  res_attr; int /*<<< orphan*/ * virt_io; int /*<<< orphan*/  node; TYPE_1__* ops; int /*<<< orphan*/  socket; int /*<<< orphan*/  poll_timer; } ;
struct skt_dev_info {int nskt; struct soc_pcmcia_socket* skt; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* hw_shutdown ) (struct soc_pcmcia_socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  dead_socket ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct skt_dev_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct skt_dev_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct soc_pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  soc_pcmcia_sockets ; 
 int /*<<< orphan*/  soc_pcmcia_sockets_lock ; 
 int /*<<< orphan*/  FUNC14 (struct soc_pcmcia_socket*) ; 

int FUNC15(struct device *dev)
{
	struct skt_dev_info *sinfo = FUNC1(dev);
	int i;

	FUNC2(dev, NULL);

	FUNC8(&soc_pcmcia_sockets_lock);
	for (i = 0; i < sinfo->nskt; i++) {
		struct soc_pcmcia_socket *skt = &sinfo->skt[i];

		FUNC0(&skt->poll_timer);

		FUNC10(&skt->socket);

		FUNC3();

		skt->ops->hw_shutdown(skt);

		FUNC12(skt, &dead_socket);

		FUNC6(&skt->node);
		FUNC4(skt->virt_io);
		skt->virt_io = NULL;
		FUNC11(&skt->res_attr);
		FUNC11(&skt->res_mem);
		FUNC11(&skt->res_io);
		FUNC11(&skt->res_skt);
	}
	if (FUNC7(&soc_pcmcia_sockets))
		FUNC13();

	FUNC9(&soc_pcmcia_sockets_lock);

	FUNC5(sinfo);

	return 0;
}