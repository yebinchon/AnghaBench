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
struct pcmciamtd_dev {unsigned long win_size; } ;
struct map_info {scalar_t__ map_priv_1; } ;
typedef  int ssize_t ;
typedef  void const* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void const*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,void const*,int) ; 
 void* FUNC2 (struct map_info*,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
	struct pcmciamtd_dev *dev = (struct pcmciamtd_dev *)map->map_priv_1;
	unsigned long win_size = dev->win_size;

	FUNC0(3, "to = %lu from = %p len = %u", to, from, len);
	while(len) {
		int towrite = win_size - (to & (win_size-1));
		caddr_t addr;

		if(towrite > len)
			towrite = len;

		addr = FUNC2(map, to);
		if(!addr)
			return;

		FUNC0(4, "memcpy from %p to %p len = %d", from, addr, towrite);
		FUNC1(addr, from, towrite);
		len -= towrite;
		to += towrite;
		from += towrite;
	}
}