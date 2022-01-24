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
struct uart_port {int dummy; } ;
struct jsm_channel {TYPE_1__* ch_bd; int /*<<< orphan*/  ch_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_STOP ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  IOCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct jsm_channel *channel = (struct jsm_channel *)port;

	FUNC0(IOCTL, INFO, &channel->ch_bd->pci_dev, "start\n");

	channel->ch_flags &= ~(CH_STOP);
	FUNC1(port);

	FUNC0(IOCTL, INFO, &channel->ch_bd->pci_dev, "finish\n");
}