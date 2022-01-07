
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a2232status {int dummy; } ;
struct a2232memory {struct a2232status volatile* Status; } ;


 struct a2232memory* a2232mem (unsigned int) ;

__attribute__((used)) static inline volatile struct a2232status *a2232stat(unsigned int board,
           unsigned int portonboard)
{
 volatile struct a2232memory *mem = a2232mem(board);
 return &(mem->Status[portonboard]);
}
