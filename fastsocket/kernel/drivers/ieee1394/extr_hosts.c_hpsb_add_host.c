
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;


 int ENOMEM ;
 int highlevel_add_host (struct hpsb_host*) ;
 scalar_t__ hpsb_default_host_entry (struct hpsb_host*) ;

int hpsb_add_host(struct hpsb_host *host)
{
 if (hpsb_default_host_entry(host))
  return -ENOMEM;

 highlevel_add_host(host);
 return 0;
}
