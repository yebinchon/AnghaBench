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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct comedi_device *dev, unsigned char value,
			       unsigned long port)
{
	FUNC0("--> 0x%02X port 0x%04lX\n", value, port);
	FUNC1(value, port);
}