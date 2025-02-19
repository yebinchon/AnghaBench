
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {scalar_t__ base_address; } ;


 scalar_t__ XHI_CR_OFFSET ;
 int XHI_CR_SW_RESET_MASK ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,int) ;

void fifo_icap_reset(struct hwicap_drvdata *drvdata)
{
 u32 reg_data;




 reg_data = in_be32(drvdata->base_address + XHI_CR_OFFSET);

 out_be32(drvdata->base_address + XHI_CR_OFFSET,
    reg_data | XHI_CR_SW_RESET_MASK);

 out_be32(drvdata->base_address + XHI_CR_OFFSET,
    reg_data & (~XHI_CR_SW_RESET_MASK));

}
