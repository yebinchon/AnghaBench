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
struct vc_data {int dummy; } ;
struct console_font_op {int op; } ;

/* Variables and functions */
 int ENOSYS ; 
#define  KD_FONT_OP_COPY 131 
#define  KD_FONT_OP_GET 130 
#define  KD_FONT_OP_SET 129 
#define  KD_FONT_OP_SET_DEFAULT 128 
 int FUNC0 (struct vc_data*,struct console_font_op*) ; 
 int FUNC1 (struct vc_data*,struct console_font_op*) ; 
 int FUNC2 (struct vc_data*,struct console_font_op*) ; 
 int FUNC3 (struct vc_data*,struct console_font_op*) ; 

int FUNC4(struct vc_data *vc, struct console_font_op *op)
{
	switch (op->op) {
	case KD_FONT_OP_SET:
		return FUNC3(vc, op);
	case KD_FONT_OP_GET:
		return FUNC2(vc, op);
	case KD_FONT_OP_SET_DEFAULT:
		return FUNC1(vc, op);
	case KD_FONT_OP_COPY:
		return FUNC0(vc, op);
	}
	return -ENOSYS;
}