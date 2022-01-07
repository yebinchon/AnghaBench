
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int dummy; } ;


 int __call_for_each_cic (struct io_context*,int ) ;
 int cic_free_func ;

__attribute__((used)) static void cfq_free_io_context(struct io_context *ioc)
{






 __call_for_each_cic(ioc, cic_free_func);
}
