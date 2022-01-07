
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ppc_flags; } ;
typedef TYPE_1__ Interface ;


 int ACCESS_READ ;
 int ACCESS_REG ;
 int ACCESS_WRITE ;
 int RAMSIZE_128K ;
 int REG_RAMSIZE ;
 int REG_VERSION ;
 int fifo_wait ;
 int ppc6_rd_data_byte (TYPE_1__*) ;
 int ppc6_select (TYPE_1__*) ;
 int ppc6_send_cmd (TYPE_1__*,int) ;
 int ppc6_wr_data_byte (TYPE_1__*,int ) ;

__attribute__((used)) static int ppc6_open(Interface *ppc)
{
 int ret;

 ret = ppc6_select(ppc);

 if (ret == 0)
  return(ret);

 ppc->ppc_flags &= ~fifo_wait;

 ppc6_send_cmd(ppc, (ACCESS_REG | ACCESS_WRITE | REG_RAMSIZE));
 ppc6_wr_data_byte(ppc, RAMSIZE_128K);

 ppc6_send_cmd(ppc, (ACCESS_REG | ACCESS_READ | REG_VERSION));

 if ((ppc6_rd_data_byte(ppc) & 0x3F) == 0x0C)
  ppc->ppc_flags |= fifo_wait;

 return(ret);
}
