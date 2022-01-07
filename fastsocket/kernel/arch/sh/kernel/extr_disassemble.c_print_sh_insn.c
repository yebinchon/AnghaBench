
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sh_opcode_info {int* nibbles; int* arg; scalar_t__ name; } ;
 int A_END ;
 int __get_user (int,int*) ;
 int printk (char*,...) ;
 struct sh_opcode_info* sh_table ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static void print_sh_insn(u32 memaddr, u16 insn)
{
 int relmask = ~0;
 int nibs[4] = { (insn >> 12) & 0xf, (insn >> 8) & 0xf, (insn >> 4) & 0xf, insn & 0xf};
 int lastsp;
 struct sh_opcode_info *op = sh_table;

 for (; op->name; op++) {
  int n;
  int imm = 0;
  int rn = 0;
  int rm = 0;
  int rb = 0;
  int disp_pc;
  int disp_pc_addr = 0;

  for (n = 0; n < 4; n++) {
   int i = op->nibbles[n];

   if (i < 16) {
    if (nibs[n] == i)
     continue;
    goto fail;
   }
   switch (i) {
   case 157:
    imm = (nibs[2] << 4) | (nibs[3]);
    if (imm & 0x80)
     imm |= ~0xff;
    imm = ((char)imm) * 2 + 4 ;
    goto ok;
   case 158:
    imm = ((nibs[1]) << 8) | (nibs[2] << 4) | (nibs[3]);
    if (imm & 0x800)
     imm |= ~0xfff;
    imm = imm * 2 + 4;
    goto ok;
   case 142:
    imm = nibs[3];
    goto ok;
   case 141:
    imm = nibs[3] <<1;
    goto ok;
   case 140:
    imm = nibs[3] <<2;
    goto ok;
   case 139:
    imm = (nibs[2] << 4) | nibs[3];
    goto ok;
   case 136:
    imm = ((nibs[2] << 4) | nibs[3]) <<1;
    relmask = ~1;
    goto ok;
   case 135:
    imm = ((nibs[2] << 4) | nibs[3]) <<2;
    relmask = ~3;
    goto ok;
   case 138:
    imm = ((nibs[2] << 4) | nibs[3]) <<1;
    goto ok;
   case 137:
    imm = ((nibs[2] << 4) | nibs[3]) <<2;
    goto ok;
   case 155:
    imm = (nibs[2] << 4) | (nibs[3]);
    goto ok;
   case 156:
    imm = nibs[3];
    goto ok;
   case 132:
    rn = nibs[n];
    break;
   case 133:
    rm = nibs[n];
    break;
   case 131:
    rn = (nibs[n] & 0xc) >> 2;
    rm = (nibs[n] & 0x3);
    break;
   case 134:
    rb = nibs[n] & 0x07;
    break;
   default:
    return;
   }
  }

 ok:
  printk("%-8s  ", op->name);
  lastsp = (op->arg[0] == A_END);
  disp_pc = 0;
  for (n = 0; n < 6 && op->arg[n] != A_END; n++) {
   if (n && op->arg[1] != A_END)
    printk(", ");
   switch (op->arg[n]) {
   case 178:
    printk("#%d", (char)(imm));
    break;
   case 168:
    printk("r0");
    break;
   case 164:
    printk("r%d", rn);
    break;
   case 176:
    printk("@r%d+", rn);
    break;
   case 184:
    printk("@-r%d", rn);
    break;
   case 174:
    printk("@r%d", rn);
    break;
   case 180:
    printk("@(%d,r%d)", imm, rn);
    break;
   case 165:
    printk("r%d", rm);
    break;
   case 177:
    printk("@r%d+", rm);
    break;
   case 185:
    printk("@-r%d", rm);
    break;
   case 175:
    printk("@r%d", rm);
    break;
   case 181:
    printk("@(%d,r%d)", imm, rm);
    break;
   case 166:
    printk("r%d_bank", rb);
    break;
   case 182:
    disp_pc = 1;
    disp_pc_addr = imm + 4 + (memaddr & relmask);
    printk("%08x <%pS>", disp_pc_addr,
           (void *)disp_pc_addr);
    break;
   case 172:
    printk("@(r0,r%d)", rn);
    break;
   case 173:
    printk("@(r0,r%d)", rm);
    break;
   case 183:
    printk("@(%d,gbr)",imm);
    break;
   case 167:
    printk("@(r0,gbr)");
    break;
   case 188:
   case 187:
    printk("%08x", imm + memaddr);
    break;
   case 161:
    printk("sr");
    break;
   case 179:
    printk("gbr");
    break;
   case 159:
    printk("vbr");
    break;
   case 160:
    printk("ssr");
    break;
   case 162:
    printk("spc");
    break;
   case 171:
    printk("mach");
    break;
   case 170:
    printk("macl");
    break;
   case 169:
    printk("pr");
    break;
   case 163:
    printk("sgr");
    break;
   case 186:
    printk("dbr");
    break;
   case 150:
    if (0)
     goto d_reg_n;
   case 143:
    printk("fr%d", rn);
    break;
   case 144:
    printk("fr%d", rm);
    break;
   case 153:
    if (rn & 1) {
     printk("xd%d", rn & ~1);
     break;
    }
   d_reg_n:
   case 151:
    printk("dr%d", rn);
    break;
   case 154:
    if (rm & 1) {
     printk("xd%d", rm & ~1);
     break;
    }
   case 152:
    printk("dr%d", rm);
    break;
   case 149:
   case 148:
    printk("fpscr");
    break;
   case 147:
   case 146:
    printk("fpul");
    break;
   case 145:
    printk("fr0");
    break;
   case 129:
    printk("fv%d", rn*4);
    break;
   case 130:
    printk("fv%d", rm*4);
    break;
   case 128:
    printk("xmtrx");
    break;
   default:
    return;
   }
  }

  if (disp_pc && strcmp(op->name, "mova") != 0) {
   u32 val;

   if (relmask == ~1)
    __get_user(val, (u16 *)disp_pc_addr);
   else
    __get_user(val, (u32 *)disp_pc_addr);

   printk("  ! %08x <%pS>", val, (void *)val);
  }

  return;
 fail:
  ;

 }

 printk(".word 0x%x%x%x%x", nibs[0], nibs[1], nibs[2], nibs[3]);
}
