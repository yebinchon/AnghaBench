
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int8_t ;
typedef scalar_t__ int16_t ;





 size_t* Areg_index ;
 int BUG () ;



 size_t* Dreg_index ;
 size_t* Rreg_index ;






 int kdebug (char*,...) ;

__attribute__((used)) static int misalignment_addr(unsigned long *registers, unsigned long sp,
        unsigned params, unsigned opcode,
        unsigned long disp,
        void **_address, unsigned long **_postinc,
        unsigned long *_inc)
{
 unsigned long *postinc = ((void*)0), address = 0, tmp;

 if (!(params & 0x1000000)) {
  kdebug("noinc");
  *_inc = 0;
  _inc = ((void*)0);
 }

 params &= 0x00ffffff;

 do {
  switch (params & 0xff) {
  case 150:
   postinc = &registers[Dreg_index[opcode & 0x03]];
   address += *postinc;
   break;
  case 149:
   postinc = &registers[Dreg_index[opcode >> 2 & 0x03]];
   address += *postinc;
   break;
  case 148:
   postinc = &registers[Dreg_index[opcode >> 4 & 0x03]];
   address += *postinc;
   break;
  case 153:
   postinc = &registers[Areg_index[opcode & 0x03]];
   address += *postinc;
   break;
  case 152:
   postinc = &registers[Areg_index[opcode >> 2 & 0x03]];
   address += *postinc;
   break;
  case 151:
   postinc = &registers[Areg_index[opcode >> 4 & 0x03]];
   address += *postinc;
   break;
  case 138:
   postinc = &registers[Rreg_index[opcode & 0x0f]];
   address += *postinc;
   break;
  case 137:
   postinc = &registers[Rreg_index[opcode >> 2 & 0x0f]];
   address += *postinc;
   break;
  case 136:
   postinc = &registers[Rreg_index[opcode >> 4 & 0x0f]];
   address += *postinc;
   break;
  case 135:
   postinc = &registers[Rreg_index[opcode >> 8 & 0x0f]];
   address += *postinc;
   break;
  case 134:
   postinc = &registers[Rreg_index[opcode >> 12 & 0x0f]];
   address += *postinc;
   break;
  case 140:
   postinc = &registers[Rreg_index[disp & 0x0f]];
   address += *postinc;
   break;
  case 139:
   postinc = &registers[Rreg_index[disp >> 4 & 0x0f]];
   address += *postinc;
   break;
  case 128:
   address += sp;
   break;




  case 131:
  case 129:
   disp = (long) (int8_t) (disp & 0xff);
   goto displace_or_inc;
  case 133:
   disp = (long) (int16_t) (disp & 0xffff);
   goto displace_or_inc;
  case 132:
   tmp = disp << 8;
   asm("asr 8,%0" : "=r"(tmp) : "0"(tmp));
   disp = (long) tmp;
   goto displace_or_inc;
  case 130:
   tmp = opcode >> 4 & 0x0f;
   tmp <<= 28;
   asm("asr 28,%0" : "=r"(tmp) : "0"(tmp));
   disp = (long) tmp;
   goto displace_or_inc;
  case 141:
   disp &= 0x000000ff;
   goto displace_or_inc;
  case 147:
   disp &= 0x0000ffff;
   goto displace_or_inc;
  case 146:
   disp &= 0x00ffffff;
   goto displace_or_inc;
  case 145:
  case 142:
  case 144:
  case 143:
  displace_or_inc:
   kdebug("%s %lx", _inc ? "incr" : "disp", disp);
   if (!_inc)
    address += disp;
   else
    *_inc = disp;
   break;
  default:
   BUG();
   return 0;
  }
 } while ((params >>= 8));

 *_address = (void *) address;
 *_postinc = postinc;
 return 1;
}
