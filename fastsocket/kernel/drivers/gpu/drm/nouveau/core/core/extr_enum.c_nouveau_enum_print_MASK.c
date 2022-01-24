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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_enum {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct nouveau_enum* FUNC0 (struct nouveau_enum const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

const struct nouveau_enum *
FUNC2(const struct nouveau_enum *en, u32 value)
{
	en = FUNC0(en, value);
	if (en)
		FUNC1("%s", en->name);
	else
		FUNC1("(unknown enum 0x%08x)", value);
	return en;
}