; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5241_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5241_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_BCM5221_TEST = common dso_local global i32 0, align 4
@MII_BCM5221_TEST_ENABLE_SHADOWS = common dso_local global i32 0, align 4
@MII_BCM5221_SHDOW_AUX_STAT2 = common dso_local global i32 0, align 4
@MII_BCM5221_SHDOW_AUX_STAT2_APD = common dso_local global i32 0, align 4
@MII_BCM5221_SHDOW_AUX_MODE4 = common dso_local global i32 0, align 4
@MII_BCM5241_SHDOW_AUX_MODE4_STANDBYPWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5241_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5241_init(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %4 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %5 = load i32, i32* @MII_BCM5221_TEST, align 4
  %6 = call i32 @phy_read(%struct.mii_phy* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %8 = load i32, i32* @MII_BCM5221_TEST, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MII_BCM5221_TEST_ENABLE_SHADOWS, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @phy_write(%struct.mii_phy* %7, i32 %8, i32 %11)
  %13 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %14 = load i32, i32* @MII_BCM5221_SHDOW_AUX_STAT2, align 4
  %15 = call i32 @phy_read(%struct.mii_phy* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %17 = load i32, i32* @MII_BCM5221_SHDOW_AUX_STAT2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MII_BCM5221_SHDOW_AUX_STAT2_APD, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @phy_write(%struct.mii_phy* %16, i32 %17, i32 %20)
  %22 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %23 = load i32, i32* @MII_BCM5221_SHDOW_AUX_MODE4, align 4
  %24 = call i32 @phy_read(%struct.mii_phy* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %26 = load i32, i32* @MII_BCM5221_SHDOW_AUX_MODE4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MII_BCM5241_SHDOW_AUX_MODE4_STANDBYPWR, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @phy_write(%struct.mii_phy* %25, i32 %26, i32 %30)
  %32 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %33 = load i32, i32* @MII_BCM5221_TEST, align 4
  %34 = call i32 @phy_read(%struct.mii_phy* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %36 = load i32, i32* @MII_BCM5221_TEST, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MII_BCM5221_TEST_ENABLE_SHADOWS, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @phy_write(%struct.mii_phy* %35, i32 %36, i32 %40)
  ret i32 0
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
