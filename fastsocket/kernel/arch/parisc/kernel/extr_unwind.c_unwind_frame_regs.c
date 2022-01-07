
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_table_entry {unsigned long region_start; int Save_RP; int Total_frame_size; scalar_t__ Millicode; int Save_SP; int region_end; } ;
struct unwind_frame_info {unsigned long ip; unsigned long prev_sp; int sp; unsigned long prev_ip; unsigned long rp; unsigned long r31; } ;


 unsigned long CALLEE_SAVE_FRAME_SIZE ;
 int KSYM_NAME_LEN ;
 unsigned long RP_OFFSET ;
 int dbg (char*,unsigned long,...) ;
 struct unwind_table_entry* find_unwind_entry (unsigned long) ;
 scalar_t__ get_user (unsigned long,unsigned long*) ;
 int kallsyms_lookup (unsigned long,int *,int *,char**,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int unwind_special (struct unwind_frame_info*,unsigned long,long) ;

__attribute__((used)) static void unwind_frame_regs(struct unwind_frame_info *info)
{
 const struct unwind_table_entry *e;
 unsigned long npc;
 unsigned int insn;
 long frame_size = 0;
 int looking_for_rp, rpoffset = 0;

 e = find_unwind_entry(info->ip);
 if (e == ((void*)0)) {
  unsigned long sp;
  extern char _stext[], _etext[];

  dbg("Cannot find unwind entry for 0x%lx; forced unwinding\n", info->ip);
  sp = info->sp & ~63;
  do {
   unsigned long tmp;

   info->prev_sp = sp - 64;
   info->prev_ip = 0;
   if (get_user(tmp, (unsigned long *)(info->prev_sp - RP_OFFSET)))
    break;
   info->prev_ip = tmp;
   sp = info->prev_sp;
  } while (info->prev_ip < (unsigned long)_stext ||
    info->prev_ip > (unsigned long)_etext);

  info->rp = 0;

  dbg("analyzing func @ %lx with no unwind info, setting "
      "prev_sp=%lx prev_ip=%lx\n", info->ip,
      info->prev_sp, info->prev_ip);
 } else {
  dbg("e->start = 0x%x, e->end = 0x%x, Save_SP = %d, "
      "Save_RP = %d, Millicode = %d size = %u\n",
      e->region_start, e->region_end, e->Save_SP, e->Save_RP,
      e->Millicode, e->Total_frame_size);

  looking_for_rp = e->Save_RP;

  for (npc = e->region_start;
       (frame_size < (e->Total_frame_size << 3) ||
        looking_for_rp) &&
       npc < info->ip;
       npc += 4) {

   insn = *(unsigned int *)npc;

   if ((insn & 0xffffc000) == 0x37de0000 ||
       (insn & 0xffe00000) == 0x6fc00000) {

    frame_size += (insn & 0x1 ? -1 << 13 : 0) |
     ((insn & 0x3fff) >> 1);
    dbg("analyzing func @ %lx, insn=%08x @ "
        "%lx, frame_size = %ld\n", info->ip,
        insn, npc, frame_size);
   } else if ((insn & 0xffe00008) == 0x73c00008) {

    frame_size += (insn & 0x1 ? -1 << 13 : 0) |
     (((insn >> 4) & 0x3ff) << 3);
    dbg("analyzing func @ %lx, insn=%08x @ "
        "%lx, frame_size = %ld\n", info->ip,
        insn, npc, frame_size);
   } else if (insn == 0x6bc23fd9) {

    rpoffset = 20;
    looking_for_rp = 0;
    dbg("analyzing func @ %lx, insn=stw rp,"
        "-20(sp) @ %lx\n", info->ip, npc);
   } else if (insn == 0x0fc212c1) {

    rpoffset = 16;
    looking_for_rp = 0;
    dbg("analyzing func @ %lx, insn=std rp,"
        "-16(sp) @ %lx\n", info->ip, npc);
   }
  }

  if (!unwind_special(info, e->region_start, frame_size)) {
   info->prev_sp = info->sp - frame_size;
   if (e->Millicode)
    info->rp = info->r31;
   else if (rpoffset)
    info->rp = *(unsigned long *)(info->prev_sp - rpoffset);
   info->prev_ip = info->rp;
   info->rp = 0;
  }

  dbg("analyzing func @ %lx, setting prev_sp=%lx "
      "prev_ip=%lx npc=%lx\n", info->ip, info->prev_sp,
      info->prev_ip, npc);
 }
}
