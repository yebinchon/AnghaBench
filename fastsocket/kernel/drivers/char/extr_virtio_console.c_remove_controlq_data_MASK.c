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
struct ports_device {int /*<<< orphan*/  c_ivq; } ;
struct port_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct ports_device*) ; 
 struct port_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 struct port_buffer* FUNC3 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC4(struct ports_device *portdev)
{
	struct port_buffer *buf;
	unsigned int len;

	if (!FUNC1(portdev))
		return;

	while ((buf = FUNC3(portdev->c_ivq, &len)))
		FUNC0(buf);

	while ((buf = FUNC2(portdev->c_ivq)))
		FUNC0(buf);
}