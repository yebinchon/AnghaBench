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
typedef  int u_int ;
struct pcmcia_device {struct net_device* priv; } ;
struct net_device {unsigned int base_addr; int* dev_addr; } ;

/* Variables and functions */
 scalar_t__ CONTROL ; 
 int CTL_EE_SELECT ; 
 int CTL_RELOAD ; 
 int CTL_STORE ; 
 scalar_t__ GENERAL ; 
 int MOT_EEPROM ; 
 scalar_t__ POINTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    unsigned int ioaddr = dev->base_addr;
    int i, wait, loop;
    u_int addr;

    /* Read Ethernet address from Serial EEPROM */

    for (i = 0; i < 3; i++) {
	FUNC0(2);
	FUNC2(MOT_EEPROM + i, ioaddr + POINTER);
	FUNC0(1);
	FUNC2((CTL_RELOAD | CTL_EE_SELECT), ioaddr + CONTROL);

	for (loop = wait = 0; loop < 200; loop++) {
	    FUNC3(10);
	    wait = ((CTL_RELOAD | CTL_STORE) & FUNC1(ioaddr + CONTROL));
	    if (wait == 0) break;
	}
	
	if (wait)
	    return -1;
	
	addr = FUNC1(ioaddr + GENERAL);
	dev->dev_addr[2*i]   = addr & 0xff;
	dev->dev_addr[2*i+1] = (addr >> 8) & 0xff;
    }

    return 0;
}