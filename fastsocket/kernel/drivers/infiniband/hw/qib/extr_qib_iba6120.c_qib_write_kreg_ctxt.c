
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u16 ;
struct qib_devdata {int dummy; } ;


 int qib_write_kreg (struct qib_devdata const*,unsigned int const,int ) ;

__attribute__((used)) static inline void qib_write_kreg_ctxt(const struct qib_devdata *dd,
           const u16 regno, unsigned ctxt,
           u64 value)
{
 qib_write_kreg(dd, regno + ctxt, value);
}
