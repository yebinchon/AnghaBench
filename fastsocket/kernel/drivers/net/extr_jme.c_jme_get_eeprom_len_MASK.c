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
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_SMBCSR ; 
 int JME_SMB_LEN ; 
 int SMBCSR_EEPROMD ; 
 int FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 struct jme_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC1(netdev);
	u32 val;
	val = FUNC0(jme, JME_SMBCSR);
	return (val & SMBCSR_EEPROMD) ? JME_SMB_LEN : 0;
}