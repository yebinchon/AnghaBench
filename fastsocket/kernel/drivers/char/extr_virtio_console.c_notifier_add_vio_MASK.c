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
struct port {int dummy; } ;
struct hvc_struct {int irq_requested; int /*<<< orphan*/  vtermno; } ;

/* Variables and functions */
 int EINVAL ; 
 struct port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 

__attribute__((used)) static int FUNC2(struct hvc_struct *hp, int data)
{
	struct port *port;

	port = FUNC0(hp->vtermno);
	if (!port)
		return -EINVAL;

	hp->irq_requested = 1;
	FUNC1(port);

	return 0;
}