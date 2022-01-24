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
struct TYPE_2__ {int bkt_hash; } ;
union ixgbe_atr_input {int* dword_stream; TYPE_1__ formatted; } ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

void FUNC2(union ixgbe_atr_input *input,
					  union ixgbe_atr_input *input_mask)
{

	u32 hi_hash_dword, lo_hash_dword, flow_vm_vlan;
	u32 bucket_hash = 0;

	/* Apply masks to input data */
	input->dword_stream[0]  &= input_mask->dword_stream[0];
	input->dword_stream[1]  &= input_mask->dword_stream[1];
	input->dword_stream[2]  &= input_mask->dword_stream[2];
	input->dword_stream[3]  &= input_mask->dword_stream[3];
	input->dword_stream[4]  &= input_mask->dword_stream[4];
	input->dword_stream[5]  &= input_mask->dword_stream[5];
	input->dword_stream[6]  &= input_mask->dword_stream[6];
	input->dword_stream[7]  &= input_mask->dword_stream[7];
	input->dword_stream[8]  &= input_mask->dword_stream[8];
	input->dword_stream[9]  &= input_mask->dword_stream[9];
	input->dword_stream[10] &= input_mask->dword_stream[10];

	/* record the flow_vm_vlan bits as they are a key part to the hash */
	flow_vm_vlan = FUNC1(input->dword_stream[0]);

	/* generate common hash dword */
	hi_hash_dword = FUNC1(input->dword_stream[1] ^
				    input->dword_stream[2] ^
				    input->dword_stream[3] ^
				    input->dword_stream[4] ^
				    input->dword_stream[5] ^
				    input->dword_stream[6] ^
				    input->dword_stream[7] ^
				    input->dword_stream[8] ^
				    input->dword_stream[9] ^
				    input->dword_stream[10]);

	/* low dword is word swapped version of common */
	lo_hash_dword = (hi_hash_dword >> 16) | (hi_hash_dword << 16);

	/* apply flow ID/VM pool/VLAN ID bits to hash words */
	hi_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan >> 16);

	/* Process bits 0 and 16 */
	FUNC0(0);

	/*
	 * apply flow ID/VM pool/VLAN ID bits to lo hash dword, we had to
	 * delay this because bit 0 of the stream should not be processed
	 * so we do not add the vlan until after bit 0 was processed
	 */
	lo_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan << 16);

	/* Process remaining 30 bit of the key */
	FUNC0(1);
	FUNC0(2);
	FUNC0(3);
	FUNC0(4);
	FUNC0(5);
	FUNC0(6);
	FUNC0(7);
	FUNC0(8);
	FUNC0(9);
	FUNC0(10);
	FUNC0(11);
	FUNC0(12);
	FUNC0(13);
	FUNC0(14);
	FUNC0(15);

	/*
	 * Limit hash to 13 bits since max bucket count is 8K.
	 * Store result at the end of the input stream.
	 */
	input->formatted.bkt_hash = bucket_hash & 0x1FFF;
}