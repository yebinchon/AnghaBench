
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int port; } ;


 int mtip_standby_immediate (int ) ;

__attribute__((used)) static int mtip_hw_shutdown(struct driver_data *dd)
{




 mtip_standby_immediate(dd->port);

 return 0;
}
