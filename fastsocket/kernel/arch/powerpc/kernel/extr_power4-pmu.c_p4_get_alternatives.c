
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (int*) ;
 int* ppc_inst_cmpl ;

__attribute__((used)) static int p4_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 int i, j, na;

 alt[0] = event;
 na = 1;


 if (event == 0x8003 || event == 0x0224) {
  alt[1] = event ^ (0x8003 ^ 0x0224);
  return 2;
 }


 if (event == 0x0c13 || event == 0x0c23) {
  alt[1] = event ^ (0x0c13 ^ 0x0c23);
  return 2;
 }


 for (i = 0; i < ARRAY_SIZE(ppc_inst_cmpl); ++i) {
  if (event == ppc_inst_cmpl[i]) {
   for (j = 0; j < ARRAY_SIZE(ppc_inst_cmpl); ++j)
    if (j != i)
     alt[na++] = ppc_inst_cmpl[j];
   break;
  }
 }

 return na;
}
