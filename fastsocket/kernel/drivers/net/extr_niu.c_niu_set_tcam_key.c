
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 unsigned long CLASS_CODE_SCTP_IPV6 ;
 unsigned long CLASS_CODE_USER_PROG1 ;
 int EINVAL ;
 int TCAM_KEY (unsigned long) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int niu_set_tcam_key(struct niu *np, unsigned long class_code, u64 key)
{
 if (class_code < CLASS_CODE_USER_PROG1 ||
     class_code > CLASS_CODE_SCTP_IPV6)
  return -EINVAL;

 nw64(TCAM_KEY(class_code - CLASS_CODE_USER_PROG1), key);
 return 0;
}
