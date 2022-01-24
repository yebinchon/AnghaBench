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
struct ioc3_driver_data {unsigned char* nic_serial; int /*<<< orphan*/  nic_part; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioc3_driver_data*,unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3_driver_data*,unsigned long,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct ioc3_driver_data *idd, unsigned long addr)
{
	unsigned char redir[64];
	unsigned char data[64],part[32];
	int i,j;

	/* read redirections */
	FUNC0(idd, addr, redir);
	/* read data pages */
	FUNC1(idd, addr, 0, redir, data);
	FUNC1(idd, addr, 1, redir, data+32);
	/* assemble the part # */
	j=0;
	for(i=0;i<19;i++)
		if(data[i+11] != ' ')
			part[j++] = data[i+11];
	for(i=0;i<6;i++)
		if(data[i+32] != ' ')
			part[j++] = data[i+32];
	part[j] = 0;
	/* skip Octane power supplies */
	if(!FUNC3(part, "060-0035-", 9))
		return;
	if(!FUNC3(part, "060-0038-", 9))
		return;
	FUNC2(idd->nic_part, part);
	/* assemble the serial # */
	j=0;
	for(i=0;i<10;i++)
		if(data[i+1] != ' ')
			idd->nic_serial[j++] = data[i+1];
	idd->nic_serial[j] = 0;
}