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
struct em28xx_fmt {unsigned int fourcc; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct em28xx_fmt*) ; 
 struct em28xx_fmt* format ; 

__attribute__((used)) static struct em28xx_fmt *FUNC1(unsigned int fourcc)
{
	unsigned int i;

	for (i = 0; i < FUNC0(format); i++)
		if (format[i].fourcc == fourcc)
			return &format[i];

	return NULL;
}