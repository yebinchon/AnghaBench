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
typedef  unsigned int u8 ;
typedef  unsigned int u32 ;
struct jme_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_SMBCSR ; 
 int /*<<< orphan*/  JME_SMBINTF ; 
 int JME_SMB_BUSY_TIMEOUT ; 
 unsigned int SMBCSR_BUSY ; 
 unsigned int SMBINTF_HWADDR ; 
 unsigned int SMBINTF_HWADDR_SHIFT ; 
 unsigned int SMBINTF_HWCMD ; 
 unsigned int SMBINTF_HWDATW ; 
 unsigned int SMBINTF_HWDATW_SHIFT ; 
 unsigned int SMBINTF_HWRWN_WRITE ; 
 unsigned int FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct jme_adapter *jme, unsigned int addr, u8 data)
{
	u32 val;
	int to;

	val = FUNC0(jme, JME_SMBCSR);
	to = JME_SMB_BUSY_TIMEOUT;
	while ((val & SMBCSR_BUSY) && --to) {
		FUNC4(1);
		val = FUNC0(jme, JME_SMBCSR);
	}
	if (!to) {
		FUNC3(jme, "SMB Bus Busy.\n");
		return;
	}

	FUNC1(jme, JME_SMBINTF,
		((data << SMBINTF_HWDATW_SHIFT) & SMBINTF_HWDATW) |
		((addr << SMBINTF_HWADDR_SHIFT) & SMBINTF_HWADDR) |
		SMBINTF_HWRWN_WRITE |
		SMBINTF_HWCMD);

	val = FUNC0(jme, JME_SMBINTF);
	to = JME_SMB_BUSY_TIMEOUT;
	while ((val & SMBINTF_HWCMD) && --to) {
		FUNC4(1);
		val = FUNC0(jme, JME_SMBINTF);
	}
	if (!to) {
		FUNC3(jme, "SMB Bus Busy.\n");
		return;
	}

	FUNC2(2);
}