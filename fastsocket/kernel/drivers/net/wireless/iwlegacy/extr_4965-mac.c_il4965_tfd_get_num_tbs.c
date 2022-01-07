
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_tfd {int num_tbs; } ;



__attribute__((used)) static inline u8
il4965_tfd_get_num_tbs(struct il_tfd *tfd)
{
 return tfd->num_tbs & 0x1f;
}
