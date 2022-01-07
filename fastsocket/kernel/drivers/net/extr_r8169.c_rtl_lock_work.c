
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct rtl8169_private {TYPE_1__ wk; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void rtl_lock_work(struct rtl8169_private *tp)
{
 mutex_lock(&tp->wk.mutex);
}
