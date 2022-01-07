
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le16 ;


 int IWL_P1K_SIZE ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void iwl_mvm_convert_p1k(u16 *p1k, __le16 *out)
{
 int i;

 for (i = 0; i < IWL_P1K_SIZE; i++)
  out[i] = cpu_to_le16(p1k[i]);
}
