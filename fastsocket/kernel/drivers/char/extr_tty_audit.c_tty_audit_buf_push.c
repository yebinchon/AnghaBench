
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct tty_audit_buf {scalar_t__ valid; int data; int minor; int major; } ;
struct task_struct {int dummy; } ;


 scalar_t__ audit_enabled ;
 int tty_audit_log (char*,struct task_struct*,int ,unsigned int,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void tty_audit_buf_push(struct task_struct *tsk, uid_t loginuid,
          unsigned int sessionid,
          struct tty_audit_buf *buf)
{
 if (buf->valid == 0)
  return;
 if (audit_enabled == 0) {
  buf->valid = 0;
  return;
 }
 tty_audit_log("tty", tsk, loginuid, sessionid, buf->major, buf->minor,
        buf->data, buf->valid);
 buf->valid = 0;
}
