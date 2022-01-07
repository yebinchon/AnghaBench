
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENET_NUM_OCTETS_PER_ADDRESS ;
 int memcmp (int **,int **,int ) ;

__attribute__((used)) static inline int compare_addr(u8 **addr1, u8 **addr2)
{
 return memcmp(addr1, addr2, ENET_NUM_OCTETS_PER_ADDRESS);
}
