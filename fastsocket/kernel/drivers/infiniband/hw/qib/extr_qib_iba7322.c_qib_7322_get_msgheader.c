
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_message_header {int dummy; } ;
struct qib_devdata {int * rhf_offset; } ;
typedef int __le32 ;


 int qib_hdrget_offset (int *) ;

__attribute__((used)) static struct qib_message_header *
qib_7322_get_msgheader(struct qib_devdata *dd, __le32 *rhf_addr)
{
 u32 offset = qib_hdrget_offset(rhf_addr);

 return (struct qib_message_header *)
  (rhf_addr - dd->rhf_offset + offset);
}
