
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* slot; } ;


 unsigned int BR_INSTR ;
 unsigned int HEQ_INSTR ;
 unsigned int ILLEGAL_INSTR ;
 unsigned int LSCSA_QW_OFFSET (unsigned int) ;
 unsigned int NOP_INSTR ;
 unsigned int RESTORE_COMPLETE ;
 unsigned int STOP_INSTR ;
 TYPE_1__* regs_spill ;
 int spu_sync () ;

__attribute__((used)) static inline void restore_complete(void)
{
 extern void exit_fini(void);
 unsigned int *exit_instrs = (unsigned int *)exit_fini;
 unsigned int offset;
 unsigned int stopped_status;
 unsigned int stopped_code;
 offset = LSCSA_QW_OFFSET(stopped_status);
 stopped_status = regs_spill[offset].slot[0];
 stopped_code = regs_spill[offset].slot[1];

 switch (stopped_status) {
 case 132:




  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = ILLEGAL_INSTR;
  exit_instrs[2] = STOP_INSTR | stopped_code;
  break;
 case 133:




  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = HEQ_INSTR;
  exit_instrs[2] = STOP_INSTR | stopped_code;
  break;
 case 128:




  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = STOP_INSTR | stopped_code;
  exit_instrs[2] = NOP_INSTR;
  exit_instrs[3] = BR_INSTR;
  break;
 case 129:



  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = ILLEGAL_INSTR;
  exit_instrs[2] = NOP_INSTR;
  exit_instrs[3] = BR_INSTR;
  break;
 case 135:



  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = ILLEGAL_INSTR;
  exit_instrs[2] = NOP_INSTR;
  exit_instrs[3] = BR_INSTR;
  break;
 case 130:

  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = NOP_INSTR;
  exit_instrs[2] = NOP_INSTR;
  exit_instrs[3] = BR_INSTR;
  break;
 case 136:



  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = HEQ_INSTR;
  exit_instrs[2] = NOP_INSTR;
  exit_instrs[3] = BR_INSTR;
  break;
 case 134:



  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = STOP_INSTR | stopped_code;
  break;
 case 131:

  exit_instrs[0] = RESTORE_COMPLETE;
  exit_instrs[1] = NOP_INSTR;
  exit_instrs[2] = NOP_INSTR;
  exit_instrs[3] = BR_INSTR;
  break;
 default:

  break;
 }
 spu_sync();
}
