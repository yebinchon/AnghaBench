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

/* Variables and functions */
 int /*<<< orphan*/  mcount ; 
 scalar_t__ mdest ; 
 int /*<<< orphan*/  mdiffs ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ msrc ; 
 scalar_t__ mval ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char termch ; 

__attribute__((used)) static void
FUNC4(int cmd)
{
	FUNC3((void *)&mdest);
	if( termch != '\n' )
		termch = 0;
	FUNC3((void *)(cmd == 's'? &mval: &msrc));
	if( termch != '\n' )
		termch = 0;
	FUNC3((void *)&mcount);
	switch( cmd ){
	case 'm':
		FUNC1((void *)mdest, (void *)msrc, mcount);
		break;
	case 's':
		FUNC2((void *)mdest, mval, mcount);
		break;
	case 'd':
		if( termch != '\n' )
			termch = 0;
		FUNC3((void *)&mdiffs);
		FUNC0((unsigned char *)mdest, (unsigned char *)msrc, mcount, mdiffs);
		break;
	}
}