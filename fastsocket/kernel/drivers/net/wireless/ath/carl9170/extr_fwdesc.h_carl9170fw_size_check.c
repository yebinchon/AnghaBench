
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CARL9170FW_MAX_SIZE ;
 unsigned int CARL9170FW_MIN_SIZE ;

__attribute__((used)) static inline bool carl9170fw_size_check(unsigned int len)
{
 return (len <= CARL9170FW_MAX_SIZE && len >= CARL9170FW_MIN_SIZE);
}
