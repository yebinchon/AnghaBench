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
struct pcmcia_device {struct net_device* priv; } ;
struct net_device {scalar_t__* dev_addr; } ;
typedef  int /*<<< orphan*/  hw_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  default_info ; 
 scalar_t__* hw_addr ; 

__attribute__((used)) static hw_info_t *FUNC0(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    int i;

    for (i = 0; i < 6; i++)
	if (hw_addr[i] != 0) break;
    if (i == 6)
	return NULL;

    for (i = 0; i < 6; i++)
	dev->dev_addr[i] = hw_addr[i];

    return &default_info;
}