
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DSFORM (unsigned int) ;
 scalar_t__ IS_XFORM (unsigned int) ;

__attribute__((used)) static inline unsigned make_dsisr(unsigned instr)
{
 unsigned dsisr;



 dsisr = (instr & 0x03ff0000) >> 16;

 if (IS_XFORM(instr)) {

  dsisr |= (instr & 0x00000006) << 14;

  dsisr |= (instr & 0x00000040) << 8;

  dsisr |= (instr & 0x00000780) << 3;
 } else {

  dsisr |= (instr & 0x04000000) >> 12;

  dsisr |= (instr & 0x78000000) >> 17;

  if (IS_DSFORM(instr))
   dsisr |= (instr & 0x00000003) << 18;
 }

 return dsisr;
}
