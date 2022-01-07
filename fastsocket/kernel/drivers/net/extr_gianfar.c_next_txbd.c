
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txbd8 {int dummy; } ;


 struct txbd8* skip_txbd (struct txbd8*,int,struct txbd8*,int) ;

__attribute__((used)) static inline struct txbd8 *next_txbd(struct txbd8 *bdp, struct txbd8 *base,
  int ring_size)
{
 return skip_txbd(bdp, 1, base, ring_size);
}
