
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freelQ_e {int len_gen; int gen2; int addr_hi; int addr_lo; } ;
struct freelQ {size_t pidx; int genbit; size_t size; int credits; int * centries; struct freelQ_e* entries; } ;


 int G_CMD_LEN (int) ;
 int V_CMD_GEN1 (int) ;
 int V_CMD_GEN2 (int) ;
 int wmb () ;

__attribute__((used)) static void recycle_fl_buf(struct freelQ *fl, int idx)
{
 struct freelQ_e *from = &fl->entries[idx];
 struct freelQ_e *to = &fl->entries[fl->pidx];

 fl->centries[fl->pidx] = fl->centries[idx];
 to->addr_lo = from->addr_lo;
 to->addr_hi = from->addr_hi;
 to->len_gen = G_CMD_LEN(from->len_gen) | V_CMD_GEN1(fl->genbit);
 wmb();
 to->gen2 = V_CMD_GEN2(fl->genbit);
 fl->credits++;

 if (++fl->pidx == fl->size) {
  fl->pidx = 0;
  fl->genbit ^= 1;
 }
}
