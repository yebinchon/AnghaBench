
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ASYNC_EVENT_CODE_QNQ ;
 int ASYNC_TRAILER_EVENT_CODE_MASK ;
 int ASYNC_TRAILER_EVENT_CODE_SHIFT ;

__attribute__((used)) static inline bool is_dbg_evt(u32 trailer)
{
 return (((trailer >> ASYNC_TRAILER_EVENT_CODE_SHIFT) &
  ASYNC_TRAILER_EVENT_CODE_MASK) ==
    ASYNC_EVENT_CODE_QNQ);
}
