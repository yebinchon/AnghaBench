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
typedef  scalar_t__ byte ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_PORT ; 
 scalar_t__ CS0 ; 
 int /*<<< orphan*/  DATA_PORT ; 
 scalar_t__ NIC_Cmd ; 
 scalar_t__ W_DUMMY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct net_device *dev, byte cmd)
{
	FUNC0(dev);
	if (cmd == W_DUMMY)
		FUNC1(NIC_Cmd, COMMAND_PORT);

	FUNC1(cmd, DATA_PORT);

	FUNC1(NIC_Cmd ^ CS0, COMMAND_PORT);
	FUNC0(dev);
	FUNC1(NIC_Cmd, COMMAND_PORT);
}