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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_IobaseAmcc; int /*<<< orphan*/  tsk_Current; } ;

/* Variables and functions */
 unsigned int ADDIDATA_ENABLE ; 
 unsigned int ADDIDATA_OR ; 
 scalar_t__ APCI1564_DIGITAL_IP ; 
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_MODE1 ; 
 scalar_t__ APCI1564_DIGITAL_IP_INTERRUPT_MODE2 ; 
 scalar_t__ APCI1564_DIGITAL_IP_IRQ ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

int FUNC1(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	devpriv->tsk_Current = current;
   /*******************************/
	/* Set the digital input logic */
   /*******************************/
	if (data[0] == ADDIDATA_ENABLE) {
		data[2] = data[2] << 4;
		data[3] = data[3] << 4;
		FUNC0(data[2],
			devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
			APCI1564_DIGITAL_IP_INTERRUPT_MODE1);
		FUNC0(data[3],
			devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
			APCI1564_DIGITAL_IP_INTERRUPT_MODE2);
		if (data[1] == ADDIDATA_OR) {
			FUNC0(0x4,
				devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
				APCI1564_DIGITAL_IP_IRQ);
		}		/*  if  (data[1] == ADDIDATA_OR) */
		else {
			FUNC0(0x6,
				devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
				APCI1564_DIGITAL_IP_IRQ);
		}		/*  else if  (data[1] == ADDIDATA_OR) */
	}			/*  if  (data[0] == ADDIDATA_ENABLE) */
	else {
		FUNC0(0x0,
			devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
			APCI1564_DIGITAL_IP_INTERRUPT_MODE1);
		FUNC0(0x0,
			devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
			APCI1564_DIGITAL_IP_INTERRUPT_MODE2);
		FUNC0(0x0,
			devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP +
			APCI1564_DIGITAL_IP_IRQ);
	}			/*  else if  (data[0] == ADDIDATA_ENABLE) */

	return insn->n;
}