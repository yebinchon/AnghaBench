
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int dummy; } ;


 int call_for_each_cic (struct io_context*,int ) ;
 int cfq_exit_single_io_context ;

__attribute__((used)) static void cfq_exit_io_context(struct io_context *ioc)
{
 call_for_each_cic(ioc, cfq_exit_single_io_context);
}
