
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_thread; } ;


 int loop_switch (struct loop_device*,int *) ;

__attribute__((used)) static int loop_flush(struct loop_device *lo)
{

 if (!lo->lo_thread)
  return 0;

 return loop_switch(lo, ((void*)0));
}
