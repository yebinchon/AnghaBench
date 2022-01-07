
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;
struct ReportLUNdata {int dummy; } ;


 int hpsa_scsi_do_report_luns (struct ctlr_info*,int ,struct ReportLUNdata*,int,int) ;

__attribute__((used)) static inline int hpsa_scsi_do_report_phys_luns(struct ctlr_info *h,
  struct ReportLUNdata *buf,
  int bufsize, int extended_response)
{
 return hpsa_scsi_do_report_luns(h, 0, buf, bufsize, extended_response);
}
