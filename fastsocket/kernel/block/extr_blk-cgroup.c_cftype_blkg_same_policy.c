
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cftype {int private; } ;
struct blkio_group {int plid; } ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;


 int BLKIOFILE_POLICY (int ) ;

__attribute__((used)) static inline bool cftype_blkg_same_policy(struct cftype *cft,
   struct blkio_group *blkg)
{
 enum blkio_policy_id plid = BLKIOFILE_POLICY(cft->private);

 if (blkg->plid == plid)
  return 1;

 return 0;
}
