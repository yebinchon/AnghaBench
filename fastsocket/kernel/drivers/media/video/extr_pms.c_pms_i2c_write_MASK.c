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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ slave; scalar_t__ sub; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  data_port ; 
 int i2c_count ; 
 TYPE_1__* i2cinfo ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_port ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(u16 slave, u16 sub, u16 data)
{
	int skip=0;
	int count;
	int i;

	for(i=0;i<i2c_count;i++)
	{
		if((i2cinfo[i].slave==slave) &&
		   (i2cinfo[i].sub == sub))
		{
			if(i2cinfo[i].data==data)
				skip=1;
			i2cinfo[i].data=data;
			i=i2c_count+1;
		}
	}

	if(i==i2c_count && i2c_count<64)
	{
		i2cinfo[i2c_count].slave=slave;
		i2cinfo[i2c_count].sub=sub;
		i2cinfo[i2c_count].data=data;
		i2c_count++;
	}

	if(skip)
		return 0;

	FUNC1(0x29, sub);
	FUNC1(0x2A, data);
	FUNC1(0x28, slave);

	FUNC2(0x28, io_port);

	count=0;
	while((FUNC0(data_port)&1)==0)
		if(count>255)
			break;
	while((FUNC0(data_port)&1)!=0)
		if(count>255)
			break;

	count=FUNC0(data_port);

	if(count&2)
		return -1;
	return count;
}