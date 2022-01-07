
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int* dev_addr; } ;
struct bdx_priv {int dummy; } ;


 int DBG (char*,int ,int ,int ) ;
 int ENTER ;
 int READ_REG (struct bdx_priv*,int ) ;
 int RET () ;
 int WRITE_REG (struct bdx_priv*,int ,int) ;
 int regUNC_MAC0_A ;
 int regUNC_MAC1_A ;
 int regUNC_MAC2_A ;

__attribute__((used)) static void bdx_restore_mac(struct net_device *ndev, struct bdx_priv *priv)
{
 u32 val;

 ENTER;
 DBG("mac0=%x mac1=%x mac2=%x\n",
     READ_REG(priv, regUNC_MAC0_A),
     READ_REG(priv, regUNC_MAC1_A), READ_REG(priv, regUNC_MAC2_A));

 val = (ndev->dev_addr[0] << 8) | (ndev->dev_addr[1]);
 WRITE_REG(priv, regUNC_MAC2_A, val);
 val = (ndev->dev_addr[2] << 8) | (ndev->dev_addr[3]);
 WRITE_REG(priv, regUNC_MAC1_A, val);
 val = (ndev->dev_addr[4] << 8) | (ndev->dev_addr[5]);
 WRITE_REG(priv, regUNC_MAC0_A, val);

 DBG("mac0=%x mac1=%x mac2=%x\n",
     READ_REG(priv, regUNC_MAC0_A),
     READ_REG(priv, regUNC_MAC1_A), READ_REG(priv, regUNC_MAC2_A));
 RET();
}
