
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qib_message_header {int dummy; } ;
struct qib_devdata {int dummy; } ;
typedef int __le32 ;



__attribute__((used)) static struct qib_message_header *
qib_6120_get_msgheader(struct qib_devdata *dd, __le32 *rhf_addr)
{
 return (struct qib_message_header *)
  &rhf_addr[sizeof(u64) / sizeof(u32)];
}
