
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_PARSE (char*,int ,int ,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,int ,int ) ;
 int pmf_next32 (struct pmf_cmd*) ;
 int write_reg16_slm ;

__attribute__((used)) static int pmf_parser_write_reg16_slm(struct pmf_cmd *cmd,
          struct pmf_handlers *h)
{
 u32 offset = pmf_next32(cmd);
 u32 shift = pmf_next32(cmd);
 u32 mask = pmf_next32(cmd);

 LOG_PARSE("pmf: write_reg16_slm(offset: %x, shift: %x, mask: %x\n",
    offset, shift, mask);

 PMF_PARSE_CALL(write_reg16_slm, cmd, h, offset, shift, mask);
}
