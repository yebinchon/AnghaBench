
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int X38_ECCERRLOG_RANK_BITS ;
 int X38_RANKS_PER_CHANNEL ;

__attribute__((used)) static int eccerrlog_row(int channel, u64 log)
{
 return ((log & X38_ECCERRLOG_RANK_BITS) >> 27) |
  (channel * X38_RANKS_PER_CHANNEL);
}
