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
struct serio {struct amba_kmi_port* port_data; } ;
struct amba_kmi_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KMIDATA ; 
 int /*<<< orphan*/  KMISTAT ; 
 int KMISTAT_TXEMPTY ; 
 int SERIO_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct serio *io, unsigned char val)
{
	struct amba_kmi_port *kmi = io->port_data;
	unsigned int timeleft = 10000; /* timeout in 100ms */

	while ((FUNC0(KMISTAT) & KMISTAT_TXEMPTY) == 0 && --timeleft)
		FUNC1(10);

	if (timeleft)
		FUNC2(val, KMIDATA);

	return timeleft ? 0 : SERIO_TIMEOUT;
}