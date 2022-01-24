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
struct sgiseeq_private {unsigned char mode; } ;
struct net_device {int flags; scalar_t__ mc_count; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 unsigned char SEEQ_RCMD_RANY ; 
 unsigned char SEEQ_RCMD_RBCAST ; 
 unsigned char SEEQ_RCMD_RBMCAST ; 
 struct sgiseeq_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct sgiseeq_private *sp = FUNC0(dev);
	unsigned char oldmode = sp->mode;

	if(dev->flags & IFF_PROMISC)
		sp->mode = SEEQ_RCMD_RANY;
	else if ((dev->flags & IFF_ALLMULTI) || dev->mc_count)
		sp->mode = SEEQ_RCMD_RBMCAST;
	else
		sp->mode = SEEQ_RCMD_RBCAST;

	/* XXX I know this sucks, but is there a better way to reprogram
	 * XXX the receiver? At least, this shouldn't happen too often.
	 */

	if (oldmode != sp->mode)
		FUNC1(dev);
}