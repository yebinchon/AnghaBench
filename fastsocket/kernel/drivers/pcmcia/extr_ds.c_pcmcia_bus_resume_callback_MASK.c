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
struct pcmcia_socket {int dummy; } ;
struct pcmcia_device {int /*<<< orphan*/  suspended; struct pcmcia_socket* socket; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct pcmcia_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void * _data)
{
	struct pcmcia_socket *skt = _data;
	struct pcmcia_device *p_dev = FUNC1(dev);

	if (p_dev->socket != skt || !p_dev->suspended)
		return 0;

	FUNC0(dev);

	return 0;
}