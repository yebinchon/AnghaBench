; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wiphy*, %struct.wl1251* }
%struct.wiphy = type { i32, i32 }
%struct.wl1251 = type { i64, i32, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mac80211 start\00", align 1
@WL1251_STATE_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot start because not in off state: %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@WL1251_STATE_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"firmware booted (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @wl1251_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 1
  %8 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  store %struct.wl1251* %8, %struct.wl1251** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  store %struct.wiphy* %11, %struct.wiphy** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @DEBUG_MAC80211, align 4
  %13 = call i32 @wl1251_debug(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %15 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %18 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WL1251_STATE_OFF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %24 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @wl1251_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %73

29:                                               ; preds = %1
  %30 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %31 = call i32 @wl1251_chip_wakeup(%struct.wl1251* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %73

35:                                               ; preds = %29
  %36 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %37 = call i32 @wl1251_boot(%struct.wl1251* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %73

41:                                               ; preds = %35
  %42 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %43 = call i32 @wl1251_hw_init(%struct.wl1251* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %73

47:                                               ; preds = %41
  %48 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %49 = call i32 @wl1251_acx_station_id(%struct.wl1251* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %73

53:                                               ; preds = %47
  %54 = load i64, i64* @WL1251_STATE_ON, align 8
  %55 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %56 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %58 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wl1251_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %62 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %65 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %67 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %70 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strncpy(i32 %68, i32 %71, i32 4)
  br label %73

73:                                               ; preds = %53, %52, %46, %40, %34, %22
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %78 = call i32 @wl1251_power_off(%struct.wl1251* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %81 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_error(i8*, i64) #1

declare dso_local i32 @wl1251_chip_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_boot(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_station_id(%struct.wl1251*) #1

declare dso_local i32 @wl1251_info(i8*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @wl1251_power_off(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
