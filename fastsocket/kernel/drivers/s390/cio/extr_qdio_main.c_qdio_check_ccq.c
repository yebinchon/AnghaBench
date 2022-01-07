
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int DBF_ERROR (char*,int ,unsigned int) ;
 int EIO ;
 int SCH_NO (struct qdio_q*) ;

__attribute__((used)) static inline int qdio_check_ccq(struct qdio_q *q, unsigned int ccq)
{

 if (ccq == 0 || ccq == 32)
  return 0;

 if (ccq == 97)
  return 1;

 if (ccq == 96)
  return 2;

 DBF_ERROR("%4x ccq:%3d", SCH_NO(q), ccq);
 return -EIO;
}
