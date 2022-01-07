
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int dummy; } ;


 scalar_t__ _enough (struct r10conf*,int,int) ;

__attribute__((used)) static int enough(struct r10conf *conf, int ignore)
{





 return _enough(conf, 0, ignore) &&
  _enough(conf, 1, ignore);
}
