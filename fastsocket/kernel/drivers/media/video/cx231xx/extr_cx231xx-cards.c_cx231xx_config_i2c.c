
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int call_all (struct cx231xx*,int ,int ,int) ;
 int s_stream ;
 int video ;

void cx231xx_config_i2c(struct cx231xx *dev)
{


 call_all(dev, video, s_stream, 1);
}
