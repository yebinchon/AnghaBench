
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct hid_device* private; } ;
struct hid_device {int rsize; int * rdesc; } ;


 int hid_dump_device (struct hid_device*,struct seq_file*) ;
 int hid_dump_input_mapping (struct hid_device*,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int hid_debug_rdesc_show(struct seq_file *f, void *p)
{
 struct hid_device *hdev = f->private;
 int i;


 for (i = 0; i < hdev->rsize; i++)
  seq_printf(f, "%02x ", hdev->rdesc[i]);
 seq_printf(f, "\n\n");


 hid_dump_device(hdev, f);
 seq_printf(f, "\n");
 hid_dump_input_mapping(hdev, f);

 return 0;
}
