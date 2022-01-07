
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void bnx2x_frag_free(const struct bnx2x_fastpath *fp, void *data)
{
 kfree(data);
}
