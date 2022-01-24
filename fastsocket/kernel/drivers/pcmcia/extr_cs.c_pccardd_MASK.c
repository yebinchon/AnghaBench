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
struct pcmcia_socket {unsigned int thread_events; int /*<<< orphan*/  dev; int /*<<< orphan*/  skt_mutex; int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  thread_done; int /*<<< orphan*/ * thread; int /*<<< orphan*/  socket; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_socket ) (struct pcmcia_socket*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* init ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CS_EVENT_BATTERY_DEAD ; 
 int /*<<< orphan*/  CS_EVENT_BATTERY_LOW ; 
 int /*<<< orphan*/  CS_EVENT_PRI_LOW ; 
 int /*<<< orphan*/  CS_EVENT_READY_CHANGE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned int SS_BATDEAD ; 
 unsigned int SS_BATWARN ; 
 unsigned int SS_DETECT ; 
 unsigned int SS_READY ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  dead_socket ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC18 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static int FUNC20(void *__skt)
{
	struct pcmcia_socket *skt = __skt;
	int ret;

	skt->thread = current;
	skt->socket = dead_socket;
	skt->ops->init(skt);
	skt->ops->set_socket(skt, &skt->socket);

	/* register with the device core */
	ret = FUNC3(&skt->dev);
	if (ret) {
		FUNC1(KERN_WARNING, &skt->dev,
			   "PCMCIA: unable to register socket\n");
		skt->thread = NULL;
		FUNC0(&skt->thread_done);
		return 0;
	}
	ret = FUNC8(&skt->dev);
	if (ret)
		FUNC2(&skt->dev, "err %d adding socket attributes\n", ret);

	FUNC0(&skt->thread_done);

	FUNC13();
	for (;;) {
		unsigned long flags;
		unsigned int events;

		FUNC12(TASK_INTERRUPTIBLE);

		FUNC15(&skt->thread_lock, flags);
		events = skt->thread_events;
		skt->thread_events = 0;
		FUNC16(&skt->thread_lock, flags);

		if (events) {
			FUNC6(&skt->skt_mutex);
			if (events & SS_DETECT)
				FUNC14(skt);
			if (events & SS_BATDEAD)
				FUNC11(skt, CS_EVENT_BATTERY_DEAD, CS_EVENT_PRI_LOW);
			if (events & SS_BATWARN)
				FUNC11(skt, CS_EVENT_BATTERY_LOW, CS_EVENT_PRI_LOW);
			if (events & SS_READY)
				FUNC11(skt, CS_EVENT_READY_CHANGE, CS_EVENT_PRI_LOW);
			FUNC7(&skt->skt_mutex);
			continue;
		}

		if (FUNC5())
			break;

		FUNC10();
		FUNC19();
	}
	/* make sure we are running before we exit */
	FUNC12(TASK_RUNNING);

	/* remove from the device core */
	FUNC9(&skt->dev);
	FUNC4(&skt->dev);

	return 0;
}