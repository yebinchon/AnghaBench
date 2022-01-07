
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report_enum {int numbered; int report_list; struct hid_report** report_id_hash; } ;
struct hid_report {unsigned int id; unsigned int type; int list; struct hid_device* device; scalar_t__ size; } ;
struct hid_device {struct hid_report_enum* report_enum; } ;


 int GFP_KERNEL ;
 unsigned int HID_MAX_IDS ;
 struct hid_report* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct hid_report *hid_register_report(struct hid_device *device, unsigned type, unsigned id)
{
 struct hid_report_enum *report_enum = device->report_enum + type;
 struct hid_report *report;

 if (id >= HID_MAX_IDS)
  return ((void*)0);
 if (report_enum->report_id_hash[id])
  return report_enum->report_id_hash[id];

 if (!(report = kzalloc(sizeof(struct hid_report), GFP_KERNEL)))
  return ((void*)0);

 if (id != 0)
  report_enum->numbered = 1;

 report->id = id;
 report->type = type;
 report->size = 0;
 report->device = device;
 report_enum->report_id_hash[id] = report;

 list_add_tail(&report->list, &report_enum->report_list);

 return report;
}
