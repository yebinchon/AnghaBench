
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_MC5_DB_DBGI_REQ_ADDR0 ;
 int A_MC5_DB_DBGI_REQ_ADDR1 ;
 int A_MC5_DB_DBGI_REQ_ADDR2 ;
 int t3_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static inline void dbgi_wr_addr3(struct adapter *adapter, u32 v1, u32 v2,
     u32 v3)
{
 t3_write_reg(adapter, A_MC5_DB_DBGI_REQ_ADDR0, v1);
 t3_write_reg(adapter, A_MC5_DB_DBGI_REQ_ADDR1, v2);
 t3_write_reg(adapter, A_MC5_DB_DBGI_REQ_ADDR2, v3);
}
