
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct h3600_dev {int dummy; } ;



 struct h3600_dev* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int h3600ts_event(struct input_dev *dev, unsigned int type,
    unsigned int code, int value)
{
 return 0;
}
