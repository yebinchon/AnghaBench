
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUXIO_AUX1_LTE ;
 int __auxio_set_bit (int ,int,int ) ;

__attribute__((used)) static void __auxio_sbus_set_lte(int on)
{
 __auxio_set_bit(AUXIO_AUX1_LTE, on, 0);
}
