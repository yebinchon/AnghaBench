
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int recovery_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void recovery_func(unsigned long data)
{




 schedule_work(&recovery_work);
}
