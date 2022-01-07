
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {int entry_idx; TYPE_1__* queue; } ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;


 int BCN_TIME_CFG ;
 int BCN_TIME_CFG_BEACON_GEN ;
 int HW_BEACON_OFFSET (int ) ;
 int rt2800_clear_beacon_register (struct rt2x00_dev*,int ) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

void rt2800_clear_beacon(struct queue_entry *entry)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 u32 reg;





 rt2800_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
 rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_GEN, 0);
 rt2800_register_write(rt2x00dev, BCN_TIME_CFG, reg);




 rt2800_clear_beacon_register(rt2x00dev,
         HW_BEACON_OFFSET(entry->entry_idx));




 rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_GEN, 1);
 rt2800_register_write(rt2x00dev, BCN_TIME_CFG, reg);
}
