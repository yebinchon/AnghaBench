
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_packet {int dummy; } ;
struct ldc_channel {int dummy; } ;


 int ldc_abort (struct ldc_channel*) ;

__attribute__((used)) static int process_error_frame(struct ldc_channel *lp,
          struct ldc_packet *p)
{
 return ldc_abort(lp);
}
