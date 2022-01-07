
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritzcard {int name; } ;


 int pr_debug (char*,int ,int ) ;
 int read_status (struct fritzcard*,int) ;

void
clear_pending_hdlc_ints(struct fritzcard *fc)
{
 u32 val;

 val = read_status(fc, 1);
 pr_debug("%s: HDLC 1 STA %x\n", fc->name, val);
 val = read_status(fc, 2);
 pr_debug("%s: HDLC 2 STA %x\n", fc->name, val);
}
