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
typedef  unsigned char u8 ;
typedef  int /*<<< orphan*/  random_data ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  QLCNIC_ILB_PKT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned char *data, u8 mac[])
{
	unsigned char random_data[] = {0xa8, 0x06, 0x45, 0x00};

	FUNC1(data, 0x4e, QLCNIC_ILB_PKT_SIZE);

	FUNC0(data, mac, ETH_ALEN);
	FUNC0(data + ETH_ALEN, mac, ETH_ALEN);

	FUNC0(data + 2 * ETH_ALEN, random_data, sizeof(random_data));
}