
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int kfree (struct work_struct*) ;
 int request_module (char*) ;

__attribute__((used)) static void
ioc4_load_modules(struct work_struct *work)
{


 request_module("sgiioc4");

 kfree(work);
}
