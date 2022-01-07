
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
 int set_i2c_mode ;

__attribute__((used)) static int pmf_parser_set_i2c_mode(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 mode = pmf_next32(cmd);

 LOG_PARSE("pmf: set_i2c_mode(mode: %d)\n", mode);

 PMF_PARSE_CALL(set_i2c_mode, cmd, h, mode);
}
