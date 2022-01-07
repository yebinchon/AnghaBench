
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int recovering_bits; int sync_bits; } ;


 int kfree (struct log_c*) ;
 int vfree (int ) ;

__attribute__((used)) static void destroy_log_context(struct log_c *lc)
{
 vfree(lc->sync_bits);
 vfree(lc->recovering_bits);
 kfree(lc);
}
