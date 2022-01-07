
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int t1_is_T1B (int const*) ;

__attribute__((used)) static inline int vlan_tso_capable(const adapter_t *adapter)
{
 return !t1_is_T1B(adapter);
}
