
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ocrdma_dev {int * sgid_tbl; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int OCRDMA_MAX_SGID ;
 struct ocrdma_dev* get_ocrdma_dev (struct ib_device*) ;
 int memcpy (union ib_gid*,int *,int) ;
 int memset (union ib_gid*,int ,int) ;

int ocrdma_query_gid(struct ib_device *ibdev, u8 port,
       int index, union ib_gid *sgid)
{
 struct ocrdma_dev *dev;

 dev = get_ocrdma_dev(ibdev);
 memset(sgid, 0, sizeof(*sgid));
 if (index >= OCRDMA_MAX_SGID)
  return -EINVAL;

 memcpy(sgid, &dev->sgid_tbl[index], sizeof(*sgid));

 return 0;
}
