
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct scan_control {int dummy; } ;


 int jprobe_return () ;
 int lkdtm_handler () ;

__attribute__((used)) static unsigned long jp_shrink_inactive_list(unsigned long max_scan,
          struct zone *zone,
          struct scan_control *sc)
{
 lkdtm_handler();
 jprobe_return();
 return 0;
}
