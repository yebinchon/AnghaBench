
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ace_device {int * data_ptr; scalar_t__ baseaddr; } ;


 int ACE_FIFO_SIZE ;
 int in_le16 (scalar_t__) ;

__attribute__((used)) static void ace_datain_be16(struct ace_device *ace)
{
 int i = ACE_FIFO_SIZE / 2;
 u16 *dst = ace->data_ptr;
 while (i--)
  *dst++ = in_le16(ace->baseaddr + 0x40);
 ace->data_ptr = dst;
}
