
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int dummy; } ;


 int BIT0 ;
 int BIT1 ;
 int RDCSR ;
 int rd_reg32 (struct slgt_info*,int ) ;
 int wr_reg32 (struct slgt_info*,int ,int ) ;

__attribute__((used)) static void rdma_reset(struct slgt_info *info)
{
 unsigned int i;


 wr_reg32(info, RDCSR, BIT1);


 for(i=0 ; i < 1000 ; i++)
  if (!(rd_reg32(info, RDCSR) & BIT0))
   break;
}
