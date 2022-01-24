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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  data_port ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_port ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u8 slave)
{
	int counter;
	int i;

	FUNC1(0x28, io_port);

	counter=0;
	while((FUNC0(data_port)&0x01)==0)
		if(counter++==256)
			break;

	while((FUNC0(data_port)&0x01)!=0)
		if(counter++==256)
			break;

	FUNC1(slave, io_port);

	counter=0;
	while((FUNC0(data_port)&0x01)==0)
		if(counter++==256)
			break;

	while((FUNC0(data_port)&0x01)!=0)
		if(counter++==256)
			break;

	for(i=0;i<12;i++)
	{
		char st=FUNC0(data_port);
		if((st&2)!=0)
			return -1;
		if((st&1)==0)
			break;
	}
	FUNC1(0x29, io_port);
	return FUNC0(data_port);
}