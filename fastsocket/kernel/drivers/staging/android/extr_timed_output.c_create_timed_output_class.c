
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int atomic_set (int *,int ) ;
 scalar_t__ class_create (int ,char*) ;
 int device_count ;
 scalar_t__ timed_output_class ;

__attribute__((used)) static int create_timed_output_class(void)
{
 if (!timed_output_class) {
  timed_output_class = class_create(THIS_MODULE, "timed_output");
  if (IS_ERR(timed_output_class))
   return PTR_ERR(timed_output_class);
  atomic_set(&device_count, 0);
 }

 return 0;
}
