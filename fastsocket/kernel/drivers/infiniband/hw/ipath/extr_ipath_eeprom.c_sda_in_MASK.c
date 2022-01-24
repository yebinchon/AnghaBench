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
struct ipath_devdata {int dummy; } ;
typedef  enum i2c_state { ____Placeholder_i2c_state } i2c_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ipath_devdata*,int /*<<< orphan*/ ,int*) ; 
 int i2c_line_high ; 
 int /*<<< orphan*/  i2c_line_sda ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static u8 FUNC3(struct ipath_devdata *dd, int wait)
{
	enum i2c_state bit;

	if (FUNC0(dd, i2c_line_sda, &bit))
		FUNC2("get bit failed!\n");

	if (wait)
		FUNC1(dd);

	return bit == i2c_line_high ? 1U : 0;
}