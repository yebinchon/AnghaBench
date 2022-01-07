
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ib_sge {scalar_t__ length; scalar_t__ lkey; int addr; } ;
struct c2_data_addr {void* length; scalar_t__ to; void* stag; } ;


 int EINVAL ;
 void* cpu_to_be32 (scalar_t__) ;
 scalar_t__ cpu_to_be64 (int ) ;

__attribute__((used)) static int
move_sgl(struct c2_data_addr * dst, struct ib_sge *src, int count, u32 * p_len,
  u8 * actual_count)
{
 u32 tot = 0;
 u8 acount = 0;

 while (count > 0) {
  if ((tot + src->length) < tot) {
   return -EINVAL;
  }




  if (src->length) {
   tot += src->length;
   dst->stag = cpu_to_be32(src->lkey);
   dst->to = cpu_to_be64(src->addr);
   dst->length = cpu_to_be32(src->length);
   dst++;
   acount++;
  }
  src++;
  count--;
 }

 if (acount == 0) {






  dst->stag = 0;
  dst->to = 0;
  dst->length = 0;
 }

 *p_len = tot;
 *actual_count = acount;
 return 0;
}
