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
typedef  int u8 ;

/* Variables and functions */
 long FUNC0 (long,int,int) ; 
 int TMP401_CONFIG_RANGE ; 

__attribute__((used)) static u8 FUNC1(long temp, u8 config)
{
	if (config & TMP401_CONFIG_RANGE) {
		temp = FUNC0(temp, -64000, 191000);
		temp += 64000;
	} else
		temp = FUNC0(temp, 0, 127000);

	return (temp + 500) / 1000;
}