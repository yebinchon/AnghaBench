
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_io_context {int state; } ;


 int AS_TASK_RUNNING ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void exit_as_io_context(struct as_io_context *aic)
{
 WARN_ON(!test_bit(AS_TASK_RUNNING, &aic->state));
 clear_bit(AS_TASK_RUNNING, &aic->state);
}
