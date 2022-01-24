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
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_Offset_Static_Digital_Input ; 
 int /*<<< orphan*/  M_Offset_Static_Digital_Output ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_insn *insn,
				     unsigned int *data)
{
#ifdef DEBUG_DIO
	printk("ni_m_series_dio_insn_bits() mask=0x%x bits=0x%x\n", data[0],
	       data[1]);
#endif
	if (insn->n != 2)
		return -EINVAL;
	if (data[0]) {
		s->state &= ~data[0];
		s->state |= (data[0] & data[1]);
		FUNC1(s->state, M_Offset_Static_Digital_Output);
	}
	data[1] = FUNC0(M_Offset_Static_Digital_Input);

	return 2;
}