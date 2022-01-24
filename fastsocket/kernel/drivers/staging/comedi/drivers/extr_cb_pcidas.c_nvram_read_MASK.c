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
typedef  int /*<<< orphan*/  uint8_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned long s5933_config; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_MCSR_NVCMD ; 
 scalar_t__ AMCC_OP_REG_MCSR_NVDATA ; 
 int ETIMEDOUT ; 
 unsigned int MCSR_NV_ENABLE ; 
 unsigned int MCSR_NV_LOAD_HIGH_ADDR ; 
 unsigned int MCSR_NV_LOAD_LOW_ADDR ; 
 unsigned int MCSR_NV_READ ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, unsigned int address,
		      uint8_t * data)
{
	unsigned long iobase = devpriv->s5933_config;

	if (FUNC2(iobase) < 0)
		return -ETIMEDOUT;

	FUNC1(MCSR_NV_ENABLE | MCSR_NV_LOAD_LOW_ADDR,
	     iobase + AMCC_OP_REG_MCSR_NVCMD);
	FUNC1(address & 0xff, iobase + AMCC_OP_REG_MCSR_NVDATA);
	FUNC1(MCSR_NV_ENABLE | MCSR_NV_LOAD_HIGH_ADDR,
	     iobase + AMCC_OP_REG_MCSR_NVCMD);
	FUNC1((address >> 8) & 0xff, iobase + AMCC_OP_REG_MCSR_NVDATA);
	FUNC1(MCSR_NV_ENABLE | MCSR_NV_READ, iobase + AMCC_OP_REG_MCSR_NVCMD);

	if (FUNC2(iobase) < 0)
		return -ETIMEDOUT;

	*data = FUNC0(iobase + AMCC_OP_REG_MCSR_NVDATA);

	return 0;
}