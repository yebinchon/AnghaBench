
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int dummy; } ;


 int __unregister_host (struct hpsb_highlevel*,struct hpsb_host*,int) ;

__attribute__((used)) static int highlevel_for_each_host_unreg(struct hpsb_host *host, void *__data)
{
 struct hpsb_highlevel *hl = __data;

 __unregister_host(hl, host, 1);
 return 0;
}
