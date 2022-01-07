
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernow_k8_data {int irt; } ;


 int udelay (int) ;

__attribute__((used)) static void count_off_irt(struct powernow_k8_data *data)
{
 udelay((1 << data->irt) * 10);
 return;
}
