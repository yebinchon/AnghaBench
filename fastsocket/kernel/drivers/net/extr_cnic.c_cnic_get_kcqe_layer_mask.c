
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ FCOE_RAMROD_CMD_ID_TERMINATE_CONN ;
 int KCQE_FLAGS_LAYER_MASK ;
 int KCQE_FLAGS_LAYER_MASK_L4 ;
 scalar_t__ KCQE_OPCODE (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u32 cnic_get_kcqe_layer_mask(u32 opflag)
{
 if (unlikely(KCQE_OPCODE(opflag) == FCOE_RAMROD_CMD_ID_TERMINATE_CONN))
  return KCQE_FLAGS_LAYER_MASK_L4;

 return opflag & KCQE_FLAGS_LAYER_MASK;
}
