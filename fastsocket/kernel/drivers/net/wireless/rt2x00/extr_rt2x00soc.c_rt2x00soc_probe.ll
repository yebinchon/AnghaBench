; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00soc.c_rt2x00soc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00soc.c_rt2x00soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rt2x00_ops = type { i32 }
%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, %struct.ieee80211_hw*, %struct.rt2x00_ops*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate hardware\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RT2X00_CHIP_INTF_SOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00soc_probe(%struct.platform_device* %0, %struct.rt2x00_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rt2x00_ops*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.rt2x00_ops* %1, %struct.rt2x00_ops** %5, align 8
  %9 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %10 = getelementptr inbounds %struct.rt2x00_ops, %struct.rt2x00_ops* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 32, i32 %11)
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = icmp ne %struct.ieee80211_hw* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.ieee80211_hw* %21)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %24, align 8
  store %struct.rt2x00_dev* %25, %struct.rt2x00_dev** %7, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 4
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 3
  store %struct.rt2x00_ops* %30, %struct.rt2x00_ops** %32, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 2
  store %struct.ieee80211_hw* %33, %struct.ieee80211_hw** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %49 = load i32, i32* @RT2X00_CHIP_INTF_SOC, align 4
  %50 = call i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev* %48, i32 %49)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %52 = call i32 @rt2x00soc_alloc_reg(%struct.rt2x00_dev* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %19
  br label %66

56:                                               ; preds = %19
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %58 = call i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %61
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %65 = call i32 @rt2x00soc_free_reg(%struct.rt2x00_dev* %64)
  br label %66

66:                                               ; preds = %63, %55
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %68 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %62, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32) #1

declare dso_local i32 @rt2x00_probe_err(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ieee80211_hw*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00soc_alloc_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00soc_free_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
