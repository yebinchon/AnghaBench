#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int reg_type; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  M_Offset_PFI_DI ; 
 int /*<<< orphan*/  M_Offset_PFI_DO ; 
 TYPE_1__ boardtype ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int ni_reg_m_series_mask ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn, unsigned int *data)
{
	if ((boardtype.reg_type & ni_reg_m_series_mask) == 0) {
		return -ENOTSUPP;
	}
	if (data[0]) {
		s->state &= ~data[0];
		s->state |= (data[0] & data[1]);
		FUNC1(s->state, M_Offset_PFI_DO);
	}
	data[1] = FUNC0(M_Offset_PFI_DI);
	return 2;
}