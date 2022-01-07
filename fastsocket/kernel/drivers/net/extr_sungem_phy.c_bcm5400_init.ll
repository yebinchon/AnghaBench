; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5400_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5400_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_BCM5400_AUXCONTROL = common dso_local global i32 0, align 4
@MII_BCM5400_AUXCONTROL_PWR10BASET = common dso_local global i32 0, align 4
@MII_BCM5400_GB_CONTROL = common dso_local global i32 0, align 4
@MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP = common dso_local global i32 0, align 4
@MII_BCM5201_MULTIPHY = common dso_local global i32 0, align 4
@MII_BCM5201_MULTIPHY_SERIALMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5400_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5400_init(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %4 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %5 = load i32, i32* @MII_BCM5400_AUXCONTROL, align 4
  %6 = call i32 @phy_read(%struct.mii_phy* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MII_BCM5400_AUXCONTROL_PWR10BASET, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %11 = load i32, i32* @MII_BCM5400_AUXCONTROL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @phy_write(%struct.mii_phy* %10, i32 %11, i32 %12)
  %14 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %15 = load i32, i32* @MII_BCM5400_GB_CONTROL, align 4
  %16 = call i32 @phy_read(%struct.mii_phy* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %21 = load i32, i32* @MII_BCM5400_GB_CONTROL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @phy_write(%struct.mii_phy* %20, i32 %21, i32 %22)
  %24 = call i32 @udelay(i32 100)
  %25 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %26 = call i32 @reset_one_mii_phy(%struct.mii_phy* %25, i32 31)
  %27 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %28 = load i32, i32* @MII_BCM5201_MULTIPHY, align 4
  %29 = call i32 @__phy_read(%struct.mii_phy* %27, i32 31, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @MII_BCM5201_MULTIPHY_SERIALMODE, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %34 = load i32, i32* @MII_BCM5201_MULTIPHY, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @__phy_write(%struct.mii_phy* %33, i32 31, i32 %34, i32 %35)
  %37 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %38 = load i32, i32* @MII_BCM5400_AUXCONTROL, align 4
  %39 = call i32 @phy_read(%struct.mii_phy* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @MII_BCM5400_AUXCONTROL_PWR10BASET, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %45 = load i32, i32* @MII_BCM5400_AUXCONTROL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @phy_write(%struct.mii_phy* %44, i32 %45, i32 %46)
  ret i32 0
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_one_mii_phy(%struct.mii_phy*, i32) #1

declare dso_local i32 @__phy_read(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @__phy_write(%struct.mii_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
