
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_parser {int idx; } ;
struct radeon_cs_packet {scalar_t__ type; scalar_t__ opcode; } ;


 scalar_t__ RADEON_PACKET3_NOP ;
 scalar_t__ RADEON_PACKET_TYPE3 ;
 int radeon_cs_packet_parse (struct radeon_cs_parser*,struct radeon_cs_packet*,int ) ;

bool radeon_cs_packet_next_is_pkt3_nop(struct radeon_cs_parser *p)
{
 struct radeon_cs_packet p3reloc;
 int r;

 r = radeon_cs_packet_parse(p, &p3reloc, p->idx);
 if (r)
  return 0;
 if (p3reloc.type != RADEON_PACKET_TYPE3)
  return 0;
 if (p3reloc.opcode != RADEON_PACKET3_NOP)
  return 0;
 return 1;
}
