
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct xps2data {scalar_t__ base_address; } ;


 scalar_t__ XPS2_RX_DATA_OFFSET ;
 scalar_t__ XPS2_STATUS_OFFSET ;
 int XPS2_STATUS_RX_FULL ;
 void* in_be32 (scalar_t__) ;

__attribute__((used)) static int xps2_recv(struct xps2data *drvdata, u8 *byte)
{
 u32 sr;
 int status = -1;


 sr = in_be32(drvdata->base_address + XPS2_STATUS_OFFSET);
 if (sr & XPS2_STATUS_RX_FULL) {
  *byte = in_be32(drvdata->base_address + XPS2_RX_DATA_OFFSET);
  status = 0;
 }

 return status;
}
