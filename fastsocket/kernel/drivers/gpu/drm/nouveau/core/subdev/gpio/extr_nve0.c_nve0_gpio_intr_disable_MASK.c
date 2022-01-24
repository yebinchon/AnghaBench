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
typedef  int u32 ;
struct nouveau_event {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,int const) ; 

void
FUNC2(struct nouveau_event *event, int line)
{
	const u32 addr = line < 16 ? 0xdc00 : 0xdc80;
	const u32 mask = 0x00010001 << (line & 0xf);
	FUNC1(event->priv, addr + 0x08, mask);
	FUNC0(event->priv, addr + 0x00, mask, 0x00000000);
}