
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int ipath_flags; } ;
typedef int ipath_kreg ;


 int IPATH_INTREG_64 ;
 int ipath_read_kreg32 (struct ipath_devdata const*,int ) ;
 int ipath_read_kreg64 (struct ipath_devdata const*,int ) ;

__attribute__((used)) static inline u64 ipath_read_ireg(const struct ipath_devdata *dd, ipath_kreg r)
{
 return (dd->ipath_flags & IPATH_INTREG_64) ?
  ipath_read_kreg64(dd, r) : ipath_read_kreg32(dd, r);
}
