
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cck_plcp_header {int signal; } ;



__attribute__((used)) static inline u8 zd_cck_plcp_header_signal(const struct cck_plcp_header *header)
{
 return header->signal;
}
