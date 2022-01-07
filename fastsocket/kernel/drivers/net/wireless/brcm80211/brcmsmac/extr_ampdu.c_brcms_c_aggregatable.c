
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct brcms_c_info {TYPE_1__* ampdu; } ;
struct TYPE_2__ {int* ini_enable; } ;



bool brcms_c_aggregatable(struct brcms_c_info *wlc, u8 tid)
{
 return wlc->ampdu->ini_enable[tid];
}
