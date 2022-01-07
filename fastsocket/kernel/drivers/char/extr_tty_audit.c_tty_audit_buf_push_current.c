
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct tty_audit_buf {int dummy; } ;


 int audit_get_loginuid (int ) ;
 unsigned int audit_get_sessionid (int ) ;
 int current ;
 int tty_audit_buf_push (int ,int ,unsigned int,struct tty_audit_buf*) ;

__attribute__((used)) static void tty_audit_buf_push_current(struct tty_audit_buf *buf)
{
 uid_t auid = audit_get_loginuid(current);
 unsigned int sessionid = audit_get_sessionid(current);
 tty_audit_buf_push(current, auid, sessionid, buf);
}
