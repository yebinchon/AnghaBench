
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubi_device {int min_io_size; } ;


 int ALIGN (int,int ) ;
 int ubi_assert (int) ;

int ubi_calc_data_len(const struct ubi_device *ubi, const void *buf,
        int length)
{
 int i;

 ubi_assert(!(length & (ubi->min_io_size - 1)));

 for (i = length - 1; i >= 0; i--)
  if (((const uint8_t *)buf)[i] != 0xFF)
   break;


 length = ALIGN(i + 1, ubi->min_io_size);
 return length;
}
