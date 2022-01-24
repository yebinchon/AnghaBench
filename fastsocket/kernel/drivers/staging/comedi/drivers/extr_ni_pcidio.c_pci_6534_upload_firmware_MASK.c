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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 size_t COMEDI_DEVCONF_AUX_DATA0_LENGTH ; 
 size_t COMEDI_DEVCONF_AUX_DATA1_LENGTH ; 
 size_t COMEDI_DEVCONF_AUX_DATA2_LENGTH ; 
 size_t COMEDI_DEVCONF_AUX_DATA_LENGTH ; 
 void* FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int FUNC2 (struct comedi_device*,int,void*,int) ; 
 int FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, int options[])
{
	int ret;
	void *main_fpga_data, *scarab_a_data, *scarab_b_data;
	int main_fpga_data_len, scarab_a_data_len, scarab_b_data_len;

	if (options[COMEDI_DEVCONF_AUX_DATA_LENGTH] == 0)
		return 0;
	ret = FUNC3(dev);
	if (ret < 0)
		return ret;
	main_fpga_data = FUNC0(options, 0);
	main_fpga_data_len = options[COMEDI_DEVCONF_AUX_DATA0_LENGTH];
	ret = FUNC2(dev, 2, main_fpga_data, main_fpga_data_len);
	if (ret < 0)
		return ret;
	FUNC1(dev);
	scarab_a_data = FUNC0(options, 1);
	scarab_a_data_len = options[COMEDI_DEVCONF_AUX_DATA1_LENGTH];
	ret = FUNC2(dev, 0, scarab_a_data, scarab_a_data_len);
	if (ret < 0)
		return ret;
	scarab_b_data = FUNC0(options, 2);
	scarab_b_data_len = options[COMEDI_DEVCONF_AUX_DATA2_LENGTH];
	ret = FUNC2(dev, 1, scarab_b_data, scarab_b_data_len);
	if (ret < 0)
		return ret;
	return 0;
}