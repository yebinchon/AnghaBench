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
typedef  size_t u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ palette; } ;

/* Variables and functions */
 TYPE_1__* w9968cf_formatlist ; 

__attribute__((used)) static inline u16 FUNC0(u16 palette)
{
	u8 i = 0;
	while (w9968cf_formatlist[i].palette != 0) {
		if (palette == w9968cf_formatlist[i].palette)
			return palette;
		i++;
	}
	return 0;
}