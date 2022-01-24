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
struct pcmcia_device {int /*<<< orphan*/ * priv; } ;
typedef  int /*<<< orphan*/  dtl1_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct pcmcia_device *link)
{
	dtl1_info_t *info = link->priv;

	FUNC0(link);

	FUNC1(info);
}