
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwicap_drvdata {scalar_t__ base_address; } ;


 scalar_t__ XHI_RFO_OFFSET ;
 int in_be32 (scalar_t__) ;

__attribute__((used)) static inline u32 fifo_icap_read_fifo_occupancy(
  struct hwicap_drvdata *drvdata)
{
 return in_be32(drvdata->base_address + XHI_RFO_OFFSET);
}
