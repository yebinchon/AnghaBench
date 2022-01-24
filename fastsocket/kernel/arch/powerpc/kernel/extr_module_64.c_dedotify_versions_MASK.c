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
struct modversion_info {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct modversion_info *vers,
			      unsigned long size)
{
	struct modversion_info *end;

	for (end = (void *)vers + size; vers < end; vers++)
		if (vers->name[0] == '.')
			FUNC0(vers->name, vers->name+1, FUNC1(vers->name));
}