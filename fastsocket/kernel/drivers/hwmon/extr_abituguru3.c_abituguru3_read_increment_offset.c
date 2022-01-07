
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct abituguru3_data {int dummy; } ;


 int abituguru3_read (struct abituguru3_data*,int,int,int,int*) ;

__attribute__((used)) static int abituguru3_read_increment_offset(struct abituguru3_data *data,
         u8 bank, u8 offset, u8 count,
         u8 *buf, int offset_count)
{
 int i, x;

 for (i = 0; i < offset_count; i++)
  if ((x = abituguru3_read(data, bank, offset + i, count,
    buf + i * count)) != count) {
   if (x < 0)
    return x;
   return i * count + x;
  }

 return i * count;
}
