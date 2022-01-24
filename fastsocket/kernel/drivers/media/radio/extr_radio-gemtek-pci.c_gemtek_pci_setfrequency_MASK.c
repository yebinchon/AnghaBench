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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct gemtek_pci {int iobase; unsigned long current_frequency; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct gemtek_pci *card, unsigned long frequency)
{
	int i;
	u32 value = frequency / 200 + 856;
	u16 mask = 0x8000;
	u8 last_byte;
	u32 port = card->iobase;

	FUNC3(&card->lock);
	card->current_frequency = frequency;
	last_byte = FUNC2(0x06, port);

	i = 0;
	do {
		FUNC1(port, &last_byte);
		i++;
	} while (i < 9);

	i = 0;
	do {
		FUNC0(value & mask, port, &last_byte);
		mask >>= 1;
		i++;
	} while (i < 16);

	FUNC5(0x10, port);
	FUNC4(&card->lock);
}