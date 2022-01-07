
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {int dev; scalar_t__ base_address; } ;


 scalar_t__ XHI_RF_OFFSET ;
 int dev_dbg (int ,char*,int ) ;
 int in_be32 (scalar_t__) ;

__attribute__((used)) static inline u32 fifo_icap_fifo_read(struct hwicap_drvdata *drvdata)
{
 u32 data = in_be32(drvdata->base_address + XHI_RF_OFFSET);
 dev_dbg(drvdata->dev, "fifo_read: %x\n", data);
 return data;
}
