; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_start_aneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_start_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@PHY_HALTED = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@PHY_AN = common dso_local global i64 0, align 8
@PHY_AN_TIMEOUT = common dso_local global i32 0, align 4
@PHY_FORCING = common dso_local global i64 0, align 8
@PHY_FORCE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_start_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load i64, i64* @AUTONEG_DISABLE, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = call i32 @phy_sanitize_settings(%struct.phy_device* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.phy_device*)**
  %21 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %20, align 8
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = call i32 %21(%struct.phy_device* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %55

27:                                               ; preds = %15
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PHY_HALTED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load i64, i64* @AUTONEG_ENABLE, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i64, i64* @PHY_AN, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @PHY_AN_TIMEOUT, align 4
  %44 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %53

46:                                               ; preds = %33
  %47 = load i64, i64* @PHY_FORCING, align 8
  %48 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @PHY_FORCE_TIMEOUT, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %27
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @phy_sanitize_settings(%struct.phy_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
