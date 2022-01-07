
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_iso {int dummy; } ;
typedef enum isoctl_cmd { ____Placeholder_isoctl_cmd } isoctl_cmd ;



__attribute__((used)) static int dummy_isoctl(struct hpsb_iso *iso, enum isoctl_cmd command,
   unsigned long arg)
{
 return -1;
}
