#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vc_data {int dummy; } ;
struct TYPE_4__ {unsigned int diacr; unsigned int base; unsigned int result; } ;
struct TYPE_3__ {scalar_t__ kbdmode; } ;

/* Variables and functions */
 unsigned int BRL_UC_ROW ; 
 scalar_t__ VC_UNICODE ; 
 TYPE_2__* accent_table ; 
 unsigned int accent_table_size ; 
 int FUNC0 (unsigned int) ; 
 unsigned int diacr ; 
 TYPE_1__* kbd ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct vc_data *vc, unsigned int ch)
{
	unsigned int d = diacr;
	unsigned int i;

	diacr = 0;

	if ((d & ~0xff) == BRL_UC_ROW) {
		if ((ch & ~0xff) == BRL_UC_ROW)
			return d | ch;
	} else {
		for (i = 0; i < accent_table_size; i++)
			if (accent_table[i].diacr == d && accent_table[i].base == ch)
				return accent_table[i].result;
	}

	if (ch == ' ' || ch == (BRL_UC_ROW|0) || ch == d)
		return d;

	if (kbd->kbdmode == VC_UNICODE)
		FUNC2(vc, d);
	else {
		int c = FUNC0(d);
		if (c != -1)
			FUNC1(vc, c);
	}

	return ch;
}