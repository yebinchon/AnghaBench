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
struct pt_regs {int dummy; } ;

/* Variables and functions */
#define  FP_CLS_INF 131 
#define  FP_CLS_NAN 130 
#define  FP_CLS_NORMAL 129 
#define  FP_CLS_ZERO 128 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int) ; 

__attribute__((used)) static inline void FUNC1(struct pt_regs *regs, int class, int sign)
{
        switch (class) {
        case FP_CLS_NORMAL:
        case FP_CLS_INF:
                FUNC0(regs, sign ? 1 : 2);
                break;
        case FP_CLS_ZERO:
                FUNC0(regs, 0);
                break;
        case FP_CLS_NAN:
                FUNC0(regs, 3);
                break;
        }
}