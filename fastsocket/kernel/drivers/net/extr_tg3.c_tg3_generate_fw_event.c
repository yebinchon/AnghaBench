
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int last_event_jiffies; } ;


 int GRC_RX_CPU_DRIVER_EVENT ;
 int GRC_RX_CPU_EVENT ;
 int jiffies ;
 int tr32 (int ) ;
 int tw32_f (int ,int ) ;

__attribute__((used)) static inline void tg3_generate_fw_event(struct tg3 *tp)
{
 u32 val;

 val = tr32(GRC_RX_CPU_EVENT);
 val |= GRC_RX_CPU_DRIVER_EVENT;
 tw32_f(GRC_RX_CPU_EVENT, val);

 tp->last_event_jiffies = jiffies;
}
