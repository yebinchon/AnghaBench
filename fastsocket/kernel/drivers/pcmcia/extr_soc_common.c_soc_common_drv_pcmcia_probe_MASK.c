#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  start; } ;
struct TYPE_15__ {struct device* parent; } ;
struct TYPE_13__ {int features; unsigned long io_offset; int sock; TYPE_8__ dev; int /*<<< orphan*/  pci_irq; int /*<<< orphan*/  map_size; scalar_t__ irq_mask; int /*<<< orphan*/ * resource_ops; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; } ;
struct TYPE_14__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct soc_pcmcia_socket {TYPE_1__ res_skt; TYPE_1__ res_io; TYPE_1__ res_mem; TYPE_1__ res_attr; int /*<<< orphan*/ * virt_io; int /*<<< orphan*/  node; TYPE_4__ socket; TYPE_7__ poll_timer; int /*<<< orphan*/  status; int /*<<< orphan*/  irq; struct pcmcia_low_level* ops; struct device* dev; } ;
struct skt_dev_info {int nskt; struct soc_pcmcia_socket* skt; } ;
struct pcmcia_low_level {int (* hw_init ) (struct soc_pcmcia_socket*) ;int /*<<< orphan*/  (* hw_shutdown ) (struct soc_pcmcia_socket*) ;int /*<<< orphan*/  (* set_timing ) (struct soc_pcmcia_socket*) ;int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ SOC_PCMCIA_POLL_PERIOD ; 
 int SS_CAP_PCCARD ; 
 int SS_CAP_STATIC_MAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  dev_attr_status ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct skt_dev_info*) ; 
 int FUNC4 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 TYPE_1__ iomem_resource ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (struct skt_dev_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pccard_static_ops ; 
 int FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  soc_common_pcmcia_operations ; 
 int /*<<< orphan*/  soc_common_pcmcia_poll_event ; 
 int /*<<< orphan*/  FUNC20 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  soc_pcmcia_sockets ; 
 int /*<<< orphan*/  soc_pcmcia_sockets_lock ; 
 int /*<<< orphan*/  FUNC22 (struct soc_pcmcia_socket*) ; 
 int FUNC23 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC24 (struct soc_pcmcia_socket*) ; 

int FUNC25(struct device *dev, struct pcmcia_low_level *ops,
				struct skt_dev_info *sinfo)
{
	struct soc_pcmcia_socket *skt;
	int ret, i;

	FUNC14(&soc_pcmcia_sockets_lock);

	/*
	 * Initialise the per-socket structure.
	 */
	for (i = 0; i < sinfo->nskt; i++) {
		skt = &sinfo->skt[i];

		skt->socket.ops = &soc_common_pcmcia_operations;
		skt->socket.owner = ops->owner;
		skt->socket.dev.parent = dev;

		FUNC7(&skt->poll_timer);
		skt->poll_timer.function = soc_common_pcmcia_poll_event;
		skt->poll_timer.data = (unsigned long)skt;
		skt->poll_timer.expires = jiffies + SOC_PCMCIA_POLL_PERIOD;

		skt->dev	= dev;
		skt->ops	= ops;

		ret = FUNC19(&iomem_resource, &skt->res_skt);
		if (ret)
			goto out_err_1;

		ret = FUNC19(&skt->res_skt, &skt->res_io);
		if (ret)
			goto out_err_2;

		ret = FUNC19(&skt->res_skt, &skt->res_mem);
		if (ret)
			goto out_err_3;

		ret = FUNC19(&skt->res_skt, &skt->res_attr);
		if (ret)
			goto out_err_4;

		skt->virt_io = FUNC8(skt->res_io.start, 0x10000);
		if (skt->virt_io == NULL) {
			ret = -ENOMEM;
			goto out_err_5;
		}

		if (FUNC13(&soc_pcmcia_sockets))
			FUNC21();

		FUNC11(&skt->node, &soc_pcmcia_sockets);

		/*
		 * We initialize default socket timing here, because
		 * we are not guaranteed to see a SetIOMap operation at
		 * runtime.
		 */
		ops->set_timing(skt);

		ret = ops->hw_init(skt);
		if (ret)
			goto out_err_6;

		skt->socket.features = SS_CAP_STATIC_MAP|SS_CAP_PCCARD;
		skt->socket.resource_ops = &pccard_static_ops;
		skt->socket.irq_mask = 0;
		skt->socket.map_size = PAGE_SIZE;
		skt->socket.pci_irq = skt->irq;
		skt->socket.io_offset = (unsigned long)skt->virt_io;

		skt->status = FUNC20(skt);

		ret = FUNC16(&skt->socket);
		if (ret)
			goto out_err_7;

		FUNC0(skt->socket.sock != i);

		FUNC1(&skt->poll_timer);

		ret = FUNC4(&skt->socket.dev, &dev_attr_status);
		if (ret)
			goto out_err_8;
	}

	FUNC3(dev, sinfo);
	ret = 0;
	goto out;

	do {
		skt = &sinfo->skt[i];

		FUNC5(&skt->socket.dev, &dev_attr_status);
 out_err_8:
		FUNC2(&skt->poll_timer);
		FUNC17(&skt->socket);

 out_err_7:
		FUNC6();

		ops->hw_shutdown(skt);
 out_err_6:
 		FUNC12(&skt->node);
		FUNC9(skt->virt_io);
 out_err_5:
		FUNC18(&skt->res_attr);
 out_err_4:
		FUNC18(&skt->res_mem);
 out_err_3:
		FUNC18(&skt->res_io);
 out_err_2:
		FUNC18(&skt->res_skt);
 out_err_1:
		i--;
	} while (i > 0);

	FUNC10(sinfo);

 out:
	FUNC15(&soc_pcmcia_sockets_lock);
	return ret;
}