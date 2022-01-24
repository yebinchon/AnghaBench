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
struct serial_info {unsigned int c950ctrl; } ;
struct pcmcia_device {struct serial_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct pcmcia_device *link)
{
	struct serial_info *info = link->priv;
	unsigned int ctrl = info->c950ctrl;

	FUNC1(0xA, ctrl + 1);
	FUNC0(100);
	FUNC1(0xE, ctrl + 1);
	FUNC0(300);
	FUNC1(0xC, ctrl + 1);
	FUNC0(100);
	FUNC1(0xE, ctrl + 1);
	FUNC0(200);
	FUNC1(0xF, ctrl + 1);
	FUNC0(100);
	FUNC1(0xE, ctrl + 1);
	FUNC0(100);
	FUNC1(0xC, ctrl + 1);
}