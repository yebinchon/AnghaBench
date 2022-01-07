
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cumanascsi2_info {int terms; scalar_t__ base; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int ALATCH_DIS_TERM ;
 int ALATCH_ENA_TERM ;
 scalar_t__ CUMANASCSI2_ALATCH ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void
cumanascsi_2_terminator_ctl(struct Scsi_Host *host, int on_off)
{
 struct cumanascsi2_info *info = (struct cumanascsi2_info *)host->hostdata;

 if (on_off) {
  info->terms = 1;
  writeb(ALATCH_ENA_TERM, info->base + CUMANASCSI2_ALATCH);
 } else {
  info->terms = 0;
  writeb(ALATCH_DIS_TERM, info->base + CUMANASCSI2_ALATCH);
 }
}
