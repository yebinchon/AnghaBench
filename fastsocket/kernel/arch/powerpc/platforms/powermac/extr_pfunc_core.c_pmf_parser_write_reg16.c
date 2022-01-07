
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_PARSE (char*,int ,int ,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,int ,int ) ;
 int pmf_next32 (struct pmf_cmd*) ;
 int write_reg16 ;

__attribute__((used)) static int pmf_parser_write_reg16(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 offset = pmf_next32(cmd);
 u16 value = (u16)pmf_next32(cmd);
 u16 mask = (u16)pmf_next32(cmd);

 LOG_PARSE("pmf: write_reg16(offset: %08x, value: %04x, mask: %04x)\n",
    offset, value, mask);

 PMF_PARSE_CALL(write_reg16, cmd, h, offset, value, mask);
}
