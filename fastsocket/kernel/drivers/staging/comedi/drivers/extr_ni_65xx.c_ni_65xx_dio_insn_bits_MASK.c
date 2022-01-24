#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {scalar_t__ type; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_9__ {scalar_t__ invert_outputs; } ;
struct TYPE_8__ {unsigned int* output_bits; TYPE_1__* mite; } ;
struct TYPE_7__ {unsigned int const base_port; } ;
struct TYPE_6__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 scalar_t__ COMEDI_SUBD_DO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (unsigned int const) ; 
 TYPE_4__* FUNC2 (struct comedi_device*) ; 
 unsigned int const ni_65xx_channels_per_port ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int const FUNC4 (TYPE_4__*) ; 
 TYPE_3__* FUNC5 (struct comedi_device*) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 TYPE_2__* FUNC7 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	unsigned base_bitfield_channel;
	const unsigned max_ports_per_bitfield = 5;
	unsigned read_bits = 0;
	unsigned j;
	if (insn->n != 2)
		return -EINVAL;
	base_bitfield_channel = FUNC0(insn->chanspec);
	for (j = 0; j < max_ports_per_bitfield; ++j) {
		const unsigned port_offset = FUNC3(base_bitfield_channel) + j;
		const unsigned port =
		    FUNC7(s)->base_port + port_offset;
		unsigned base_port_channel;
		unsigned port_mask, port_data, port_read_bits;
		int bitshift;
		if (port >= FUNC4(FUNC2(dev)))
			break;
		base_port_channel = port_offset * ni_65xx_channels_per_port;
		port_mask = data[0];
		port_data = data[1];
		bitshift = base_port_channel - base_bitfield_channel;
		if (bitshift >= 32 || bitshift <= -32)
			break;
		if (bitshift > 0) {
			port_mask >>= bitshift;
			port_data >>= bitshift;
		} else {
			port_mask <<= -bitshift;
			port_data <<= -bitshift;
		}
		port_mask &= 0xff;
		port_data &= 0xff;
		if (port_mask) {
			unsigned bits;
			FUNC5(dev)->output_bits[port] &= ~port_mask;
			FUNC5(dev)->output_bits[port] |=
			    port_data & port_mask;
			bits = FUNC5(dev)->output_bits[port];
			if (FUNC2(dev)->invert_outputs)
				bits = ~bits;
			FUNC8(bits,
			       FUNC5(dev)->mite->daq_io_addr +
			       FUNC1(port));
/* printk("wrote 0x%x to port %i\n", bits, port); */
		}
		port_read_bits =
		    FUNC6(FUNC5(dev)->mite->daq_io_addr + FUNC1(port));
/* printk("read 0x%x from port %i\n", port_read_bits, port); */
		if (s->type == COMEDI_SUBD_DO && FUNC2(dev)->invert_outputs) {
			/* Outputs inverted, so invert value read back from
			 * DO subdevice.  (Does not apply to boards with DIO
			 * subdevice.) */
			port_read_bits ^= 0xFF;
		}
		if (bitshift > 0) {
			port_read_bits <<= bitshift;
		} else {
			port_read_bits >>= -bitshift;
		}
		read_bits |= port_read_bits;
	}
	data[1] = read_bits;
	return insn->n;
}