
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;


 int IPU_CHA_BUF0_RDY ;
 int IPU_CHA_BUF1_RDY ;
 int idmac_write_ipureg (int *,unsigned long,int ) ;
 int ipu_data ;

__attribute__((used)) static void ipu_select_buffer(enum ipu_channel channel, int buffer_n)
{

 if (buffer_n == 0)

  idmac_write_ipureg(&ipu_data, 1UL << channel, IPU_CHA_BUF0_RDY);
 else

  idmac_write_ipureg(&ipu_data, 1UL << channel, IPU_CHA_BUF1_RDY);
}
