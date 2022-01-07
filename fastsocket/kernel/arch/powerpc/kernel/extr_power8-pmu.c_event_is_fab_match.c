
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline bool event_is_fab_match(u64 event)
{

 event &= 0xff0fe;


 return (event == 0x30056 || event == 0x4f052);
}
