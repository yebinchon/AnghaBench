
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int s32 ;
typedef int s16 ;


 scalar_t__ LOG10_2 ;
 int LOG2_LOG_TABLE_SIZE ;
 int* log_table ;
 int qm_add16 (int,int) ;
 int qm_add32 (int,int) ;
 int qm_muls16 (int,int) ;
 scalar_t__ qm_mulu16 (scalar_t__,scalar_t__) ;
 int qm_norm32 (int) ;
 int qm_shl32 (int,int) ;

void qm_log10(s32 N, s16 qN, s16 *log10N, s16 *qLog10N)
{
 s16 s16norm, s16tableIndex, s16errorApproximation;
 u16 u16offset;
 s32 s32log;


 s16norm = qm_norm32(N);
 N = N << s16norm;







 qN = qN + s16norm - 30;



 s16tableIndex = (s16) (N >> (32 - (2 + LOG2_LOG_TABLE_SIZE)));


 s16tableIndex =
  s16tableIndex & (s16) ((1 << LOG2_LOG_TABLE_SIZE) - 1);


 N = N & ((1 << (32 - (2 + LOG2_LOG_TABLE_SIZE))) - 1);



 u16offset = (u16) (N >> (32 - (2 + LOG2_LOG_TABLE_SIZE + 16)));


 s32log = log_table[s16tableIndex];


 s16errorApproximation = (s16) qm_mulu16(u16offset,
    (u16) (log_table[s16tableIndex + 1] -
           log_table[s16tableIndex]));


 s32log = qm_add16((s16) s32log, s16errorApproximation);




 s32log = qm_add32(s32log, ((s32) -qN) << 15);


 s16norm = qm_norm32(s32log);



 s32log = qm_shl32(s32log, s16norm - 16);





 *log10N = qm_muls16((s16) s32log, (s16) LOG10_2);


 *qLog10N = 15 + s16norm - 16 + 1;

 return;
}
