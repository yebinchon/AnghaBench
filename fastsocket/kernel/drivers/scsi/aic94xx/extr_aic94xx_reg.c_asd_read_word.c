
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct asd_ha_struct {TYPE_1__* io_handle; int iospace; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int inw (unsigned long) ;
 int readw (scalar_t__) ;
 int rmb () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static u16 asd_read_word(struct asd_ha_struct *asd_ha,
    unsigned long offs)
{
 u16 val;
 if (unlikely(asd_ha->iospace))
  val = inw((unsigned long)asd_ha->io_handle[0].addr
     + (offs & 0xFF));
 else
  val = readw(asd_ha->io_handle[0].addr + offs);
 rmb();
 return val;
}
