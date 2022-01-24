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

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_PORT ; 
 int CS0 ; 
 int /*<<< orphan*/  DATA_PORT ; 
 int NIC_Cmd ; 
 int READ_DELAY ; 
 int WRITE_DELAY ; 
 int W_DFR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct net_device *dev)
{
	FUNC1(dev);
	FUNC2(W_DFR, DATA_PORT);
	FUNC2(NIC_Cmd ^ CS0, COMMAND_PORT);

	FUNC1(dev);
#ifdef LOWSPEED
	outb(WRITE_DELAY, DATA_PORT);
#else
	FUNC2(0, DATA_PORT);
#endif
	FUNC0(dev);

	FUNC1(dev);
#ifdef LOWSPEED
	outb(READ_DELAY, DATA_PORT);
#else
	FUNC2(0, DATA_PORT);
#endif
	FUNC0(dev);
}