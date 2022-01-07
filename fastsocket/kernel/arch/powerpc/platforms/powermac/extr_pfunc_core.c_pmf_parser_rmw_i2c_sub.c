
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_BLOB (char*,void const*,int ) ;
 int LOG_PARSE (char*,int ,int ,int ,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,int ,int ,int ,void const*,void const*) ;
 int pmf_next32 (struct pmf_cmd*) ;
 void* pmf_next_blob (struct pmf_cmd*,int ) ;
 int rmw_i2c_sub ;

__attribute__((used)) static int pmf_parser_rmw_i2c_sub(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u8 subaddr = (u8)pmf_next32(cmd);
 u32 maskbytes = pmf_next32(cmd);
 u32 valuesbytes = pmf_next32(cmd);
 u32 totalbytes = pmf_next32(cmd);
 const void *maskblob = pmf_next_blob(cmd, maskbytes);
 const void *valuesblob = pmf_next_blob(cmd, valuesbytes);

 LOG_PARSE("pmf: rmw_i2c_sub(subaddr: %x, maskbytes: %ud, valuebytes: %ud"
    ", totalbytes: %d) ...\n",
    subaddr, maskbytes, valuesbytes, totalbytes);
 LOG_BLOB("pmf:   mask data: \n", maskblob, maskbytes);
 LOG_BLOB("pmf:   values data: \n", valuesblob, valuesbytes);

 PMF_PARSE_CALL(rmw_i2c_sub, cmd, h, subaddr, maskbytes, valuesbytes,
         totalbytes, maskblob, valuesblob);
}
