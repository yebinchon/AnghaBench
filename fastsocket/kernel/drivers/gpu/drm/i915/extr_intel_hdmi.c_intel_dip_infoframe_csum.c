
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct dip_infoframe {unsigned int len; scalar_t__ checksum; scalar_t__ ecc; } ;


 unsigned int DIP_HEADER_SIZE ;

void intel_dip_infoframe_csum(struct dip_infoframe *frame)
{
 uint8_t *data = (uint8_t *)frame;
 uint8_t sum = 0;
 unsigned i;

 frame->checksum = 0;
 frame->ecc = 0;

 for (i = 0; i < frame->len + DIP_HEADER_SIZE; i++)
  sum += data[i];

 frame->checksum = 0x100 - sum;
}
