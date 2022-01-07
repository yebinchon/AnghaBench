
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynpcc_info {int cur; int attempt; scalar_t__ cnt; } ;


 scalar_t__ likely (int) ;

__attribute__((used)) static void
jme_attempt_pcc(struct dynpcc_info *dpi, int atmp)
{
 if (likely(atmp == dpi->cur)) {
  dpi->cnt = 0;
  return;
 }

 if (dpi->attempt == atmp) {
  ++(dpi->cnt);
 } else {
  dpi->attempt = atmp;
  dpi->cnt = 0;
 }

}
