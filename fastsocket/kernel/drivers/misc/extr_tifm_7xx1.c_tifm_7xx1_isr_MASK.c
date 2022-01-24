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
struct tifm_dev {int /*<<< orphan*/  (* card_event ) (struct tifm_dev*) ;int /*<<< orphan*/  (* data_event ) (struct tifm_dev*) ;} ;
struct tifm_adapter {unsigned int num_sockets; unsigned int socket_change_set; int /*<<< orphan*/  lock; int /*<<< orphan*/  media_switcher; scalar_t__ addr; scalar_t__ finish_me; struct tifm_dev** sockets; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FM_CLEAR_INTERRUPT_ENABLE ; 
 scalar_t__ FM_INTERRUPT_STATUS ; 
 scalar_t__ FM_SET_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (int) ; 
 unsigned int TIFM_IRQ_ENABLE ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tifm_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct tifm_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct tifm_adapter *fm = dev_id;
	struct tifm_dev *sock;
	unsigned int irq_status, cnt;

	FUNC4(&fm->lock);
	irq_status = FUNC3(fm->addr + FM_INTERRUPT_STATUS);
	if (irq_status == 0 || irq_status == (~0)) {
		FUNC5(&fm->lock);
		return IRQ_NONE;
	}

	if (irq_status & TIFM_IRQ_ENABLE) {
		FUNC9(TIFM_IRQ_ENABLE, fm->addr + FM_CLEAR_INTERRUPT_ENABLE);

		for (cnt = 0; cnt < fm->num_sockets; cnt++) {
			sock = fm->sockets[cnt];
			if (sock) {
				if ((irq_status >> cnt) & FUNC1(1))
					sock->data_event(sock);
				if ((irq_status >> cnt) & FUNC0(1))
					sock->card_event(sock);
			}
		}

		fm->socket_change_set |= irq_status
					 & ((1 << fm->num_sockets) - 1);
	}
	FUNC9(irq_status, fm->addr + FM_INTERRUPT_STATUS);

	if (fm->finish_me)
		FUNC2(fm->finish_me);
	else if (!fm->socket_change_set)
		FUNC9(TIFM_IRQ_ENABLE, fm->addr + FM_SET_INTERRUPT_ENABLE);
	else
		FUNC8(&fm->media_switcher);

	FUNC5(&fm->lock);
	return IRQ_HANDLED;
}