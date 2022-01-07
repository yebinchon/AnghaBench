
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {TYPE_2__* ops; } ;
typedef int __le32 ;
struct TYPE_4__ {TYPE_1__* bcn; } ;
struct TYPE_3__ {int winfo_size; } ;


 int rt2800_register_write (struct rt2x00_dev*,unsigned int,int ) ;

__attribute__((used)) static inline void rt2800_clear_beacon_register(struct rt2x00_dev *rt2x00dev,
      unsigned int beacon_base)
{
 int i;
 const int txwi_desc_size = rt2x00dev->ops->bcn->winfo_size;






 for (i = 0; i < txwi_desc_size; i += sizeof(__le32))
  rt2800_register_write(rt2x00dev, beacon_base + i, 0);
}
