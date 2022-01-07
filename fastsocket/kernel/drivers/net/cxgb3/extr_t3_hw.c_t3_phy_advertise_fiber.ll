; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_phy_advertise_fiber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_phy_advertise_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_1000XHALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_1000XFULL = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@MDIO_DEVAD_NONE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_phy_advertise_fiber(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @ADVERTISE_1000XHALF, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @ADVERTISE_1000XFULL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ADVERTISED_Pause, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.cphy*, %struct.cphy** %3, align 8
  %43 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %44 = load i32, i32* @MII_ADVERTISE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @t3_mdio_write(%struct.cphy* %42, i32 %43, i32 %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
