
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {int dev; scalar_t__ base_address; } ;


 scalar_t__ XHI_SR_OFFSET ;
 int dev_dbg (int ,char*,int ) ;
 int in_be32 (scalar_t__) ;

u32 fifo_icap_get_status(struct hwicap_drvdata *drvdata)
{
 u32 status = in_be32(drvdata->base_address + XHI_SR_OFFSET);
 dev_dbg(drvdata->dev, "Getting status = %x\n", status);
 return status;
}
