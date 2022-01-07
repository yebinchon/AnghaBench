
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct mcp23s08 {unsigned int* cache; } ;


 size_t MCP_OLAT ;
 int mcp23s08_write (struct mcp23s08*,size_t,unsigned int) ;

__attribute__((used)) static int __mcp23s08_set(struct mcp23s08 *mcp, unsigned mask, int value)
{
 u8 olat = mcp->cache[MCP_OLAT];

 if (value)
  olat |= mask;
 else
  olat &= ~mask;
 mcp->cache[MCP_OLAT] = olat;
 return mcp23s08_write(mcp, MCP_OLAT, olat);
}
