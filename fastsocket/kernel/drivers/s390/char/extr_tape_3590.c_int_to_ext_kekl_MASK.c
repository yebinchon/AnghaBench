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
struct tape390_kekl {int /*<<< orphan*/  label; void* type_on_tape; void* type; } ;
struct tape3592_kekl {int flags; int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* TAPE390_KEKL_TYPE_HASH ; 
 void* TAPE390_KEKL_TYPE_LABEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tape390_kekl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tape3592_kekl *in,
			    struct tape390_kekl *out)
{
	FUNC2(out, 0, sizeof(*out));
	if(in->flags & 0x40)
		out->type = TAPE390_KEKL_TYPE_HASH;
	else
		out->type = TAPE390_KEKL_TYPE_LABEL;
	if(in->flags & 0x80)
		out->type_on_tape = TAPE390_KEKL_TYPE_HASH;
	else
		out->type_on_tape = TAPE390_KEKL_TYPE_LABEL;
	FUNC1(out->label, in->label, sizeof(in->label));
	FUNC0(out->label, sizeof(in->label));
	FUNC3(out->label);
}