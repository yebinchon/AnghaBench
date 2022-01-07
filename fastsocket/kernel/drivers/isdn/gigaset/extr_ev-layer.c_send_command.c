
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {TYPE_1__* ops; int dev; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* write_cmd ) (struct cardstate*,char*,size_t,int *) ;} ;


 int dev_err (int ,char*) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 int stub1 (struct cardstate*,char*,size_t,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void send_command(struct cardstate *cs, const char *cmd, int cid,
    int dle, gfp_t kmallocflags)
{
 size_t cmdlen, buflen;
 char *cmdpos, *cmdbuf, *cmdtail;

 cmdlen = strlen(cmd);
 buflen = 11 + cmdlen;
 if (unlikely(buflen <= cmdlen)) {
  dev_err(cs->dev, "integer overflow in buflen\n");
  return;
 }

 cmdbuf = kmalloc(buflen, kmallocflags);
 if (unlikely(!cmdbuf)) {
  dev_err(cs->dev, "out of memory\n");
  return;
 }

 cmdpos = cmdbuf + 9;
 cmdtail = cmdpos + cmdlen;
 memcpy(cmdpos, cmd, cmdlen);

 if (cid > 0 && cid <= 65535) {
  do {
   *--cmdpos = '0' + cid % 10;
   cid /= 10;
   ++cmdlen;
  } while (cid);
 }

 cmdlen += 2;
 *--cmdpos = 'T';
 *--cmdpos = 'A';

 if (dle) {
  cmdlen += 4;
  *--cmdpos = '(';
  *--cmdpos = 0x10;
  *cmdtail++ = 0x10;
  *cmdtail++ = ')';
 }

 cs->ops->write_cmd(cs, cmdpos, cmdlen, ((void*)0));
 kfree(cmdbuf);
}
