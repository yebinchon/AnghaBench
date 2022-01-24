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
typedef  int u16 ;
struct zr36060 {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zr36060*,int /*<<< orphan*/ ,char const) ; 

__attribute__((used)) static int
FUNC2 (struct zr36060 *ptr,
		u16             startreg,
		u16             len,
		const char     *data)
{
	int i = 0;

	FUNC0(4, "%s: write data block to 0x%04x (len=%d)\n", ptr->name,
		startreg, len);
	while (i < len) {
		FUNC1(ptr, startreg++, data[i++]);
	}

	return i;
}