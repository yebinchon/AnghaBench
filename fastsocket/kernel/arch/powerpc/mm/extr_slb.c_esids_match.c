
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_1T_SEGMENT ;
 scalar_t__ GET_ESID (unsigned long) ;
 scalar_t__ GET_ESID_1T (unsigned long) ;
 unsigned long SID_SHIFT_1T ;
 int cpu_has_feature (int ) ;

__attribute__((used)) static inline int esids_match(unsigned long addr1, unsigned long addr2)
{
 int esid_1t_count;


 if (!cpu_has_feature(CPU_FTR_1T_SEGMENT))
  return (GET_ESID(addr1) == GET_ESID(addr2));

 esid_1t_count = (((addr1 >> SID_SHIFT_1T) != 0) +
    ((addr2 >> SID_SHIFT_1T) != 0));


 if (esid_1t_count == 0)
  return (GET_ESID(addr1) == GET_ESID(addr2));


 if (esid_1t_count == 1)
  return 0;


 return (GET_ESID_1T(addr1) == GET_ESID_1T(addr2));
}
