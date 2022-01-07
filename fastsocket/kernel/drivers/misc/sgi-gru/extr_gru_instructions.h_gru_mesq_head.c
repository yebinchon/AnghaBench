
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union gru_mesqhead {int head; int limit; } ;



__attribute__((used)) static inline union gru_mesqhead gru_mesq_head(int head, int limit)
{
 union gru_mesqhead mqh;

 mqh.head = head;
 mqh.limit = limit;
 return mqh;
}
