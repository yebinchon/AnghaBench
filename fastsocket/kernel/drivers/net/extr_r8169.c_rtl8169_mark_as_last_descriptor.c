
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RxDesc {int opts1; } ;


 int RingEnd ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void rtl8169_mark_as_last_descriptor(struct RxDesc *desc)
{
 desc->opts1 |= cpu_to_le32(RingEnd);
}
