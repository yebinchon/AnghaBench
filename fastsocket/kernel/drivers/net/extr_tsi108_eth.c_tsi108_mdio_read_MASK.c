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
struct tsi108_prv_data {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct tsi108_prv_data* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct tsi108_prv_data*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int addr, int reg)
{
	struct tsi108_prv_data *data = FUNC0(dev);
	return FUNC1(data, reg);
}