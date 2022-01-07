
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_PARSE (char*,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ) ;
 int pmf_next32 (struct pmf_cmd*) ;
 int read_reg8 ;

__attribute__((used)) static int pmf_parser_read_reg8(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 offset = pmf_next32(cmd);

 LOG_PARSE("pmf: read_reg8(offset: %08x)\n", offset);

 PMF_PARSE_CALL(read_reg8, cmd, h, offset);
}
