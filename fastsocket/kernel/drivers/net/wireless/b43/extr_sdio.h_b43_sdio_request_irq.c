
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int b43_sdio_request_irq(struct b43_wldev *dev,
    void (*handler)(struct b43_wldev *dev))
{
 return -ENODEV;
}
