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
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct zoran*) ; 
 scalar_t__ FUNC1 (struct zoran*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2 (struct videocodec *codec,
	       u16                reg,
	       u32                val)
{
	struct zoran *zr = (struct zoran *) codec->master_data->data;

	if (FUNC0(zr)
	    || FUNC1(zr, 0, 1, reg >> 8)
	    || FUNC1(zr, 0, 2, reg & 0xff)) {
		return;
	}

	FUNC1(zr, 0, 3, val & 0xff);
}