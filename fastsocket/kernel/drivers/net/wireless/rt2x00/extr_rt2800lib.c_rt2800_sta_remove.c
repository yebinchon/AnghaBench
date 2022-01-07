
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int rt2800_config_wcid (struct rt2x00_dev*,int *,int) ;

int rt2800_sta_remove(struct rt2x00_dev *rt2x00dev, int wcid)
{




 rt2800_config_wcid(rt2x00dev, ((void*)0), wcid);

 return 0;
}
