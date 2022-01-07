; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_phy_check_without_mii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_phy_check_without_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@eeprom_phy_iface = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"found MII-less i82503 or 80c24 or other PHY\0A\00", align 1
@mdio_ctrl_phy_mii_emulated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_phy_check_without_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_phy_check_without_mii(%struct.nic* %0) #0 {
  %2 = alloca %struct.nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %2, align 8
  %5 = load %struct.nic*, %struct.nic** %2, align 8
  %6 = getelementptr inbounds %struct.nic, %struct.nic* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @eeprom_phy_iface, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 15
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %27 [
    i32 129, label %14
    i32 130, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.nic*, %struct.nic** %2, align 8
  %16 = load i32, i32* @probe, align 4
  %17 = load %struct.nic*, %struct.nic** %2, align 8
  %18 = getelementptr inbounds %struct.nic, %struct.nic* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_info(%struct.nic* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @mdio_ctrl_phy_mii_emulated, align 4
  %22 = load %struct.nic*, %struct.nic** %2, align 8
  %23 = getelementptr inbounds %struct.nic, %struct.nic* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nic*, %struct.nic** %2, align 8
  %25 = getelementptr inbounds %struct.nic, %struct.nic* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  store i32 1, i32* %4, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @netif_info(%struct.nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
