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
struct TYPE_2__ {int present; } ;
struct pcmcia_socket {TYPE_1__ pcmcia_state; int /*<<< orphan*/  dev; } ;
typedef  int event_t ;

/* Variables and functions */
#define  CS_EVENT_CARD_INSERTION 134 
#define  CS_EVENT_CARD_REMOVAL 133 
#define  CS_EVENT_CARD_RESET 132 
#define  CS_EVENT_EJECTION_REQUEST 131 
#define  CS_EVENT_PM_RESUME 130 
#define  CS_EVENT_PM_SUSPEND 129 
#define  CS_EVENT_RESET_PHYSICAL 128 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,char*,int,int,struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 struct pcmcia_socket* FUNC5 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_socket *skt, event_t event, int priority)
{
	struct pcmcia_socket *s = FUNC5(skt);

	if (!s) {
		FUNC0(KERN_ERR, &skt->dev,
			   "PCMCIA obtaining reference to socket "	\
			   "failed, event 0x%x lost!\n", event);
		return -ENODEV;
	}

	FUNC1(1, &skt->dev, "ds_event(0x%06x, %d, 0x%p)\n",
		   event, priority, skt);

	switch (event) {
	case CS_EVENT_CARD_REMOVAL:
		s->pcmcia_state.present = 0;
		FUNC4(skt, NULL);
		FUNC2(skt, event);
		break;

	case CS_EVENT_CARD_INSERTION:
		s->pcmcia_state.present = 1;
		FUNC3(skt);
		FUNC2(skt, event);
		break;

	case CS_EVENT_EJECTION_REQUEST:
		break;

	case CS_EVENT_PM_SUSPEND:
	case CS_EVENT_PM_RESUME:
	case CS_EVENT_RESET_PHYSICAL:
	case CS_EVENT_CARD_RESET:
	default:
		FUNC2(skt, event);
		break;
    }

    FUNC6(s);

    return 0;
}