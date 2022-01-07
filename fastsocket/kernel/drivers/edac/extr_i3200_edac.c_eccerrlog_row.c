
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int I3200_ECCERRLOG_RANK_BITS ;
 int I3200_ECCERRLOG_RANK_SHIFT ;
 int I3200_RANKS_PER_CHANNEL ;

__attribute__((used)) static int eccerrlog_row(int channel, u64 log)
{
 u64 rank = ((log & I3200_ECCERRLOG_RANK_BITS) >>
  I3200_ECCERRLOG_RANK_SHIFT);
 return rank | (channel * I3200_RANKS_PER_CHANNEL);
}
