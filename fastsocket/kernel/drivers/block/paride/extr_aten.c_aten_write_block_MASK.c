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
typedef  int /*<<< orphan*/  PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2( PIA *pi, char * buf, int count )

{	int k;

	FUNC0(0x88); FUNC1(0xe); FUNC1(6);
	for (k=0;k<count/2;k++) {
		FUNC0(buf[2*k+1]); FUNC1(0xe); FUNC1(6);
		FUNC0(buf[2*k]); FUNC1(7); FUNC1(6);
	}
	FUNC1(0xc);
}