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
 unsigned char FUNC1 (unsigned long) ; 

__attribute__((used)) static inline unsigned char FUNC2(struct comedi_device *dev,
				       unsigned long port)
{
	unsigned char value;
	value = FUNC1(port);
	FUNC0("<-- 0x%08X port 0x%04lX\n", value, port);
	return value;
}