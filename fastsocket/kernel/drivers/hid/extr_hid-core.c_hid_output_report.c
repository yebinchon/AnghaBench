
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report {scalar_t__ id; unsigned int maxfield; int * field; } ;
typedef int __u8 ;


 int hid_output_field (int ,int *) ;

void hid_output_report(struct hid_report *report, __u8 *data)
{
 unsigned n;

 if (report->id > 0)
  *data++ = report->id;

 for (n = 0; n < report->maxfield; n++)
  hid_output_field(report->field[n], data);
}
