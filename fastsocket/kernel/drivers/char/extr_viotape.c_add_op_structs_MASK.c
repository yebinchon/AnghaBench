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
struct op_struct {struct op_struct* next; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct op_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct op_struct* op_struct_list ; 

__attribute__((used)) static int FUNC2(int structs)
{
	int i;

	for (i = 0; i < structs; ++i) {
		struct op_struct *new_struct =
			FUNC1(sizeof(*new_struct), GFP_KERNEL);
		if (!new_struct) {
			FUNC0();
			return -ENOMEM;
		}
		new_struct->next = op_struct_list;
		op_struct_list = new_struct;
	}
	return 0;
}