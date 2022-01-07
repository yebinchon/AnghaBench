
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u8 cip2si1(u16 cipval)
{
 static const u8 si[32] =
 {7, 1, 7, 7, 1, 1, 7, 7,
  7, 1, 0, 0, 0, 0, 0, 0,
  1, 2, 4, 10, 9, 9, 15, 7,
  7, 7, 1, 16, 16, 0, 0, 0};

 if (cipval > 31)
  cipval = 0;
 return si[cipval];
}
