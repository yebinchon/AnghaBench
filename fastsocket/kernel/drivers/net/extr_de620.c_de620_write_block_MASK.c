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
struct net_device {int dummy; } ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_PORT ; 
 int /*<<< orphan*/  DATA_PORT ; 
 int DS0 ; 
 int DS1 ; 
 int NIC_Cmd ; 
 int /*<<< orphan*/  W_DUMMY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int tot_cnt ; 

__attribute__((used)) static inline void
FUNC4(struct net_device *dev, byte *buffer, int count, int pad)
{
#ifndef LOWSPEED
	byte uflip = NIC_Cmd ^ (DS0 | DS1);
	byte dflip = NIC_Cmd;
#else /* LOWSPEED */
#ifdef COUNT_LOOPS
	int bytes = count;
#endif /* COUNT_LOOPS */
#endif /* LOWSPEED */

#ifdef LOWSPEED
#ifdef COUNT_LOOPS
	tot_cnt = 0;
#endif /* COUNT_LOOPS */
	/* No further optimization useful, the limit is in the adapter. */
	for ( ; count > 0; --count, ++buffer) {
		de620_put_byte(dev,*buffer);
	}
	for ( count = pad ; count > 0; --count, ++buffer) {
		de620_put_byte(dev, 0);
	}
	de620_send_command(dev,W_DUMMY);
#ifdef COUNT_LOOPS
	/* trial debug output: loops per byte in de620_ready() */
	printk("WRITE(%d)\n", tot_cnt/((bytes?bytes:1)));
#endif /* COUNT_LOOPS */
#else /* not LOWSPEED */
	for ( ; count > 0; count -=2) {
		FUNC2(*buffer++, DATA_PORT);
		FUNC2(uflip, COMMAND_PORT);
		FUNC2(*buffer++, DATA_PORT);
		FUNC2(dflip, COMMAND_PORT);
	}
	FUNC1(dev,W_DUMMY);
#endif /* LOWSPEED */
}