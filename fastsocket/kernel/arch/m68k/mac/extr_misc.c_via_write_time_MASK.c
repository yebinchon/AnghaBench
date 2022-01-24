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
typedef  int __u8 ;

/* Variables and functions */
 long RTC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 

__attribute__((used)) static void FUNC1(long time)
{
	union {
		__u8  cdata[4];
		long  idata;
	} data;
	__u8	temp;

	/* Clear the write protect bit */

	temp = 0x55;
	FUNC0(0x35, &temp);

	data.idata = time + RTC_OFFSET;
	FUNC0(0x01, &data.cdata[3]);
	FUNC0(0x05, &data.cdata[2]);
	FUNC0(0x09, &data.cdata[1]);
	FUNC0(0x0D, &data.cdata[0]);

	/* Set the write protect bit */

	temp = 0xD5;
	FUNC0(0x35, &temp);
}