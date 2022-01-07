
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u8 cip2si2(u16 cipval)
{
 static const u8 si[32] =
 {0, 0, 0, 0, 2, 3, 0, 0,
  0, 3, 0, 0, 0, 0, 0, 0,
  1, 2, 0, 0, 9, 0, 0, 0,
  0, 0, 3, 2, 3, 0, 0, 0};

 if (cipval > 31)
  cipval = 0;
 return si[cipval];
}
