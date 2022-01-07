
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct hid_report_enum {struct hid_report** report_id_hash; scalar_t__ numbered; } ;
struct hid_report {int dummy; } ;


 int dbg_hid (char*,unsigned int) ;

__attribute__((used)) static struct hid_report *hid_get_report(struct hid_report_enum *report_enum,
  const u8 *data)
{
 struct hid_report *report;
 unsigned int n = 0;


 if (report_enum->numbered)
  n = *data;

 report = report_enum->report_id_hash[n];
 if (report == ((void*)0))
  dbg_hid("undefined report_id %u received\n", n);

 return report;
}
