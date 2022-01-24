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
struct domain_device {scalar_t__ dev_type; } ;

/* Variables and functions */
 scalar_t__ EDGE_DEV ; 
 scalar_t__ FANOUT_DEV ; 

__attribute__((used)) static inline bool FUNC0(struct domain_device *dev)
{
	return dev->dev_type == EDGE_DEV || dev->dev_type == FANOUT_DEV;
}