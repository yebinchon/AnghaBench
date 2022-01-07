
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_audit_buf {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int tty_audit_buf_free (struct tty_audit_buf*) ;

__attribute__((used)) static void tty_audit_buf_put(struct tty_audit_buf *buf)
{
 if (atomic_dec_and_test(&buf->count))
  tty_audit_buf_free(buf);
}
