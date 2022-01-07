
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
 int wait_reg32 ;

__attribute__((used)) static int pmf_parser_wait_reg32(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 offset = pmf_next32(cmd);
 u32 value = pmf_next32(cmd);
 u32 mask = pmf_next32(cmd);

 LOG_PARSE("pmf: wait_reg32(offset: %08x, comp_value: %08x,mask: %08x)\n",
    offset, value, mask);

 PMF_PARSE_CALL(wait_reg32, cmd, h, offset, value, mask);
}
