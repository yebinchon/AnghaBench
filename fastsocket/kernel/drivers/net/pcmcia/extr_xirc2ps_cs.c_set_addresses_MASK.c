#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {unsigned int base_addr; int mc_count; unsigned char* dev_addr; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {unsigned char* dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_3__ {scalar_t__ mohawk; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    local_info_t *lp = FUNC2(dev);
    struct dev_mc_list *dmi = dev->mc_list;
    unsigned char *addr;
    int i,j,k,n;

    FUNC1(k=0x50);
    for (i=0,j=8,n=0; ; i++, j++) {
	if (i > 5) {
	    if (++n > 9)
		break;
	    i = 0;
	    if (n > 1 && n <= dev->mc_count && dmi) {
	   	 dmi = dmi->next;
	    }
	}
	if (j > 15) {
	    j = 8;
	    k++;
	    FUNC1(k);
	}

	if (n && n <= dev->mc_count && dmi)
	    addr = dmi->dmi_addr;
	else
	    addr = dev->dev_addr;

	if (lp->mohawk)
	    FUNC0(j, addr[5-i]);
	else
	    FUNC0(j, addr[i]);
    }
    FUNC1(0);
}