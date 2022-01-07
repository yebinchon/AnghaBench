
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ L1_CODE_LENGTH ;
 scalar_t__ L1_DATA_A_LENGTH ;
 scalar_t__ L1_DATA_B_LENGTH ;
 scalar_t__ L2_LENGTH ;
 scalar_t__ L2_START ;
 scalar_t__ get_l1_code_start () ;
 scalar_t__ get_l1_data_a_start () ;
 scalar_t__ get_l1_data_b_start () ;
 int l1_data_A_sram_free (void const*) ;
 int l1_data_B_sram_free (void const*) ;
 int l1_inst_sram_free (void const*) ;
 int l2_sram_free (void const*) ;

int sram_free(const void *addr)
{
  return -1;
}
