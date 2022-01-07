
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsb {int dummy; } ;
struct tidaw {int dummy; } ;
struct tcw {int dummy; } ;
struct itcw {int dummy; } ;


 int PAGE_SHIFT ;
 scalar_t__ TCCB_MAX_SIZE ;

size_t itcw_calc_size(int intrg, int max_tidaws, int intrg_max_tidaws)
{
 size_t len;
 int cross_count;


 len = sizeof(struct itcw);
 len += sizeof(struct tcw) + TCCB_MAX_SIZE +
                  sizeof(struct tsb) +
                    max_tidaws * sizeof(struct tidaw);

 if (intrg) {
  len += sizeof(struct tcw) + TCCB_MAX_SIZE +
                   sizeof(struct tsb) +
                     intrg_max_tidaws * sizeof(struct tidaw);
 }


 len += 63 + 7;
 if (max_tidaws) {
  cross_count = 1 + ((max_tidaws * sizeof(struct tidaw) - 1)
       >> PAGE_SHIFT);
  len += cross_count * sizeof(struct tidaw);
 }
 if (intrg_max_tidaws) {
  cross_count = 1 + ((intrg_max_tidaws * sizeof(struct tidaw) - 1)
       >> PAGE_SHIFT);
  len += cross_count * sizeof(struct tidaw);
 }
 return len;
}
