
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int proc_dev; int slot; scalar_t__ (* procfn ) (char*,int ,int ) ;} ;
typedef int off_t ;


 int mca_default_procfn (char*,struct mca_device*) ;
 scalar_t__ stub1 (char*,int ,int ) ;

__attribute__((used)) static int mca_read_proc(char *page, char **start, off_t off,
     int count, int *eof, void *data)
{
 struct mca_device *mca_dev = (struct mca_device *)data;
 int len = 0;



 len = mca_default_procfn(page, mca_dev);



 if(mca_dev->procfn) {
  len += mca_dev->procfn(page+len, mca_dev->slot,
           mca_dev->proc_dev);
 }
 if (len <= off+count) *eof = 1;
 *start = page + off;
 len -= off;
 if (len>count) len = count;
 if (len<0) len = 0;
 return len;
}
