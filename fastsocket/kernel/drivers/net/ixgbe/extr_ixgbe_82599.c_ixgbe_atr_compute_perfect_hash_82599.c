
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bkt_hash; } ;
union ixgbe_atr_input {int* dword_stream; TYPE_1__ formatted; } ;
typedef int u32 ;


 int IXGBE_COMPUTE_BKT_HASH_ITERATION (int) ;
 int ntohl (int) ;

void ixgbe_atr_compute_perfect_hash_82599(union ixgbe_atr_input *input,
       union ixgbe_atr_input *input_mask)
{

 u32 hi_hash_dword, lo_hash_dword, flow_vm_vlan;
 u32 bucket_hash = 0;


 input->dword_stream[0] &= input_mask->dword_stream[0];
 input->dword_stream[1] &= input_mask->dword_stream[1];
 input->dword_stream[2] &= input_mask->dword_stream[2];
 input->dword_stream[3] &= input_mask->dword_stream[3];
 input->dword_stream[4] &= input_mask->dword_stream[4];
 input->dword_stream[5] &= input_mask->dword_stream[5];
 input->dword_stream[6] &= input_mask->dword_stream[6];
 input->dword_stream[7] &= input_mask->dword_stream[7];
 input->dword_stream[8] &= input_mask->dword_stream[8];
 input->dword_stream[9] &= input_mask->dword_stream[9];
 input->dword_stream[10] &= input_mask->dword_stream[10];


 flow_vm_vlan = ntohl(input->dword_stream[0]);


 hi_hash_dword = ntohl(input->dword_stream[1] ^
        input->dword_stream[2] ^
        input->dword_stream[3] ^
        input->dword_stream[4] ^
        input->dword_stream[5] ^
        input->dword_stream[6] ^
        input->dword_stream[7] ^
        input->dword_stream[8] ^
        input->dword_stream[9] ^
        input->dword_stream[10]);


 lo_hash_dword = (hi_hash_dword >> 16) | (hi_hash_dword << 16);


 hi_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan >> 16);


 IXGBE_COMPUTE_BKT_HASH_ITERATION(0);






 lo_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan << 16);


 IXGBE_COMPUTE_BKT_HASH_ITERATION(1);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(2);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(3);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(4);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(5);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(6);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(7);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(8);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(9);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(10);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(11);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(12);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(13);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(14);
 IXGBE_COMPUTE_BKT_HASH_ITERATION(15);





 input->formatted.bkt_hash = bucket_hash & 0x1FFF;
}
