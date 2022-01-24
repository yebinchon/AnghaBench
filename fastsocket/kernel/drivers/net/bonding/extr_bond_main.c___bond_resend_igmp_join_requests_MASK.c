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
struct ip_mc_list {struct ip_mc_list* next; } ;
struct in_device {struct ip_mc_list* mc_list; } ;

/* Variables and functions */
 struct in_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct in_device *in_dev;
	struct ip_mc_list *im;

	FUNC2();
	in_dev = FUNC0(dev);
	if (in_dev) {
		for (im = in_dev->mc_list; im; im = im->next)
			FUNC1(im);
	}

	FUNC3();
}