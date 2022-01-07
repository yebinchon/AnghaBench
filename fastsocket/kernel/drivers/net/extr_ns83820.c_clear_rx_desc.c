
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ descs; } ;
struct ns83820 {TYPE_1__ rx_info; } ;


 int CMDSTS_OWN ;
 unsigned int DESC_SIZE ;
 int build_rx_desc (struct ns83820*,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static inline void clear_rx_desc(struct ns83820 *dev, unsigned i)
{
 build_rx_desc(dev, dev->rx_info.descs + (DESC_SIZE * i), 0, 0, CMDSTS_OWN, 0);
}
