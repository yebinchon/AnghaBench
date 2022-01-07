
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atmel_private {int dev; } ;


 int DR ;
 int atmel_write8 (int ,int ,int ) ;
 int atmel_writeAR (int ,int ) ;

__attribute__((used)) static inline void atmel_wmem8(struct atmel_private *priv, u16 pos, u16 data)
{
 atmel_writeAR(priv->dev, pos);
 atmel_write8(priv->dev, DR, data);
}
