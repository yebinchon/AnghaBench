
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HvCall0 (int ) ;
 int HvCallHptGetHptPages ;

__attribute__((used)) static inline u64 HvCallHpt_getHptPages(void)
{
 return HvCall0(HvCallHptGetHptPages);
}
