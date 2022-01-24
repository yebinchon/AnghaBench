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
struct tape390_kekl {scalar_t__ type; scalar_t__ type_on_tape; int /*<<< orphan*/  label; } ;
struct tape3592_kekl {int flags; char* label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ TAPE390_KEKL_TYPE_HASH ; 
 int /*<<< orphan*/  FUNC1 (struct tape3592_kekl*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct tape390_kekl *in,
			    struct tape3592_kekl *out)
{
	int i;

	FUNC1(out, 0, sizeof(*out));
	if (in->type == TAPE390_KEKL_TYPE_HASH)
		out->flags |= 0x40;
	if (in->type_on_tape == TAPE390_KEKL_TYPE_HASH)
		out->flags |= 0x80;
	FUNC3(out->label, in->label, 64);
	for (i = FUNC2(in->label); i < sizeof(out->label); i++)
		out->label[i] = ' ';
	FUNC0(out->label, sizeof(out->label));
}