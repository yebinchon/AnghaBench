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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,unsigned char) ; 

__attribute__((used)) static inline int FUNC1(struct i2c_client *c, unsigned char reg,
			  unsigned char *value)
{
	int rc;

	rc = FUNC0(c, reg);
	*value = (unsigned char) rc;
	return rc;
}