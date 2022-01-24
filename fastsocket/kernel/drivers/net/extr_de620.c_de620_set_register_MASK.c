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
 int CS0 ; 
 int /*<<< orphan*/  DATA_PORT ; 
 int NIC_Cmd ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct net_device *dev, byte reg, byte value)
{
	FUNC1(dev);
	FUNC2(reg, DATA_PORT);
	FUNC2(NIC_Cmd ^ CS0, COMMAND_PORT);

	FUNC0(dev, value);
}