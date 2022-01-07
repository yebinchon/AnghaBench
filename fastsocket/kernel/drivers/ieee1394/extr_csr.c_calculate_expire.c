
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csr_control {int split_timeout_hi; int split_timeout_lo; int expire; } ;


 int HPSB_VERBOSE (char*,int ,int ) ;
 int HZ ;
 int usecs_to_jiffies (unsigned int) ;

__attribute__((used)) static inline void calculate_expire(struct csr_control *csr)
{
 unsigned int usecs = (csr->split_timeout_hi & 7) * 1000000 +
        (csr->split_timeout_lo >> 19) * 125;

 csr->expire = usecs_to_jiffies(usecs > 100000 ? usecs : 100000);
 HPSB_VERBOSE("CSR: setting expire to %lu, HZ=%u", csr->expire, HZ);
}
