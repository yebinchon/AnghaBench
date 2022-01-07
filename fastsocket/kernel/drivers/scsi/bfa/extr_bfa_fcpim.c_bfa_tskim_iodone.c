
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_tskim_s {int wc; } ;


 int bfa_wc_down (int *) ;

void
bfa_tskim_iodone(struct bfa_tskim_s *tskim)
{
 bfa_wc_down(&tskim->wc);
}
