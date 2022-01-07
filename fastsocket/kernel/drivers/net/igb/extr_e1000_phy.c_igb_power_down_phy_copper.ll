; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_power_down_phy_copper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_power_down_phy_copper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@PHY_CONTROL = common dso_local global i32 0, align 4
@MII_CR_POWER_DOWN = common dso_local global i32 0, align 4
@e1000_phy_i210 = common dso_local global i64 0, align 8
@GS40G_COPPER_SPEC = common dso_local global i32 0, align 4
@GS40G_CS_POWER_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_power_down_phy_copper(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %8, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = bitcast %struct.e1000_hw* %10 to %struct.e1000_hw.1*
  %12 = load i32, i32* @PHY_CONTROL, align 4
  %13 = call i32 %9(%struct.e1000_hw.1* %11, i32 %12, i32* %3)
  %14 = load i32, i32* @MII_CR_POWER_DOWN, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_phy_i210, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %27, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = bitcast %struct.e1000_hw* %29 to %struct.e1000_hw.1*
  %31 = load i32, i32* @GS40G_COPPER_SPEC, align 4
  %32 = call i32 %28(%struct.e1000_hw.1* %30, i32 %31, i32* %4)
  %33 = load i32, i32* @GS40G_CS_POWER_DOWN, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.0*
  %43 = load i32, i32* @GS40G_COPPER_SPEC, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %40(%struct.e1000_hw.0* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %23, %1
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %50, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = bitcast %struct.e1000_hw* %52 to %struct.e1000_hw.0*
  %54 = load i32, i32* @PHY_CONTROL, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 %51(%struct.e1000_hw.0* %53, i32 %54, i32 %55)
  %57 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
