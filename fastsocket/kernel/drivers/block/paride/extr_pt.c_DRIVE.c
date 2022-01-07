
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pt_unit {int drive; } ;



__attribute__((used)) static inline u8 DRIVE(struct pt_unit *tape)
{
 return 0xa0+0x10*tape->drive;
}
