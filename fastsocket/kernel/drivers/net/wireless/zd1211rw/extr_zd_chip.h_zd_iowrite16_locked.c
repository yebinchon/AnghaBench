
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u16 ;
struct zd_ioreq16 {int value; int addr; } ;
struct zd_chip {int usb; int mutex; } ;


 int ZD_ASSERT (int ) ;
 int mutex_is_locked (int *) ;
 int zd_usb_iowrite16v (int *,struct zd_ioreq16*,int) ;

__attribute__((used)) static inline int zd_iowrite16_locked(struct zd_chip *chip, u16 value,
                               zd_addr_t addr)
{
 struct zd_ioreq16 ioreq;

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 ioreq.addr = addr;
 ioreq.value = value;

 return zd_usb_iowrite16v(&chip->usb, &ioreq, 1);
}
