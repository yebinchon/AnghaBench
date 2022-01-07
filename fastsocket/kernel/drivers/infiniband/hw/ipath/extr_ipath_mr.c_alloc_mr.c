
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mapsz; struct ipath_mr** map; int lkey; } ;
struct TYPE_3__ {int lkey; int rkey; } ;
struct ipath_mr {TYPE_2__ mr; TYPE_1__ ibmr; } ;
struct ipath_lkey_table {int dummy; } ;


 int GFP_KERNEL ;
 int IPATH_SEGSZ ;
 int ipath_alloc_lkey (struct ipath_lkey_table*,TYPE_2__*) ;
 int kfree (struct ipath_mr*) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static struct ipath_mr *alloc_mr(int count,
     struct ipath_lkey_table *lk_table)
{
 struct ipath_mr *mr;
 int m, i = 0;


 m = (count + IPATH_SEGSZ - 1) / IPATH_SEGSZ;
 mr = kmalloc(sizeof *mr + m * sizeof mr->mr.map[0], GFP_KERNEL);
 if (!mr)
  goto done;


 for (; i < m; i++) {
  mr->mr.map[i] = kmalloc(sizeof *mr->mr.map[0], GFP_KERNEL);
  if (!mr->mr.map[i])
   goto bail;
 }
 mr->mr.mapsz = m;





 if (!ipath_alloc_lkey(lk_table, &mr->mr))
  goto bail;
 mr->ibmr.rkey = mr->ibmr.lkey = mr->mr.lkey;

 goto done;

bail:
 while (i) {
  i--;
  kfree(mr->mr.map[i]);
 }
 kfree(mr);
 mr = ((void*)0);

done:
 return mr;
}
