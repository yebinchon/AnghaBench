#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct zoran {int dummy; } ;
struct videocodec {TYPE_1__* master_data; } ;
typedef  int __u32 ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (struct zoran*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct zoran*) ; 
 scalar_t__ FUNC2 (struct zoran*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32
FUNC3 (struct videocodec *codec,
	      u16                reg)
{
	struct zoran *zr = (struct zoran *) codec->master_data->data;
	__u32 data;

	if (FUNC1(zr)
	    || FUNC2(zr, 1, 0, reg >> 2)) {	// reg. HIGHBYTES
		return -1;
	}

	data = FUNC0(zr, 0, reg & 0x03) & 0xff;	// reg. LOWBYTES + read
	return data;
}