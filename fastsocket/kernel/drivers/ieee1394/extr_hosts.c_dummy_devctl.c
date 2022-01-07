
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
typedef enum devctl_cmd { ____Placeholder_devctl_cmd } devctl_cmd ;



__attribute__((used)) static int dummy_devctl(struct hpsb_host *h, enum devctl_cmd c, int arg)
{
 return -1;
}
