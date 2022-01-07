; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_bcm63xx.c_bcm63xx_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_bcm63xx.c_bcm63xx_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM63XX_IR = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_GMASK = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_DUPLEX = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_SPEED = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_LINK = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm63xx_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_BCM63XX_IR, align 4
  %8 = call i32 @phy_read(%struct.phy_device* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32, i32* @MII_BCM63XX_IR_GMASK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MII_BCM63XX_IR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @phy_write(%struct.phy_device* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %13
  %26 = load i32, i32* @MII_BCM63XX_IR_DUPLEX, align 4
  %27 = load i32, i32* @MII_BCM63XX_IR_SPEED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MII_BCM63XX_IR_LINK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* @MII_BCM63XX_IR_EN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = load i32, i32* @MII_BCM63XX_IR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @phy_write(%struct.phy_device* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %40, %23, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
