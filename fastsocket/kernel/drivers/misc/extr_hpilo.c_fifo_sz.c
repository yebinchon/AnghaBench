
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int FIFOHANDLESIZE ;

__attribute__((used)) static inline int fifo_sz(int nr_entry)
{

 return (nr_entry * sizeof(u64)) + FIFOHANDLESIZE;
}
