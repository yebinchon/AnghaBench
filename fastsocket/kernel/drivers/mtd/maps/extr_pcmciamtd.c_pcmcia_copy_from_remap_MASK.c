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
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 void* FUNC2 (struct map_info*,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct map_info *map, void *to, unsigned long from, ssize_t len)
{
	struct pcmciamtd_dev *dev = (struct pcmciamtd_dev *)map->map_priv_1;
	unsigned long win_size = dev->win_size;

	FUNC0(3, "to = %p from = %lu len = %u", to, from, len);
	while(len) {
		int toread = win_size - (from & (win_size-1));
		caddr_t addr;

		if(toread > len)
			toread = len;

		addr = FUNC2(map, from);
		if(!addr)
			return;

		FUNC0(4, "memcpy from %p to %p len = %d", addr, to, toread);
		FUNC1(to, addr, toread);
		len -= toread;
		to += toread;
		from += toread;
	}
}