; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_init_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { %struct.wiphy* }
%struct.wiphy = type { %struct.TYPE_8__**, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@WL1271_BOOT_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"firmware boot failed despite %d retries\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"firmware booted (%s)\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"11a is %ssupported\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@WLCORE_STATE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl12xx_init_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_init_fw(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %7 = load i32, i32* @WL1271_BOOT_RETRIES, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 6
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  store %struct.wiphy* %12, %struct.wiphy** %5, align 8
  br label %13

13:                                               ; preds = %57, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  %19 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %20 = call i32 @wl12xx_chip_wakeup(%struct.wl1271* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %57

24:                                               ; preds = %16
  %25 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.wl1271*)**
  %30 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %29, align 8
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = call i32 %30(%struct.wl1271* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %57

36:                                               ; preds = %24
  %37 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %38 = call i32 @wl1271_hw_init(%struct.wl1271* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %43

42:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %60

43:                                               ; preds = %41
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 3
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %48 = call i32 @wlcore_disable_interrupts(%struct.wl1271* %47)
  %49 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %50 = call i32 @wl1271_flush_deferred_work(%struct.wl1271* %49)
  %51 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 4
  %53 = call i32 @cancel_work_sync(i32* %52)
  %54 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 3
  %56 = call i32 @mutex_lock(i32* %55)
  br label %57

57:                                               ; preds = %43, %35, %23
  %58 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %59 = call i32 @wl1271_power_off(%struct.wl1271* %58)
  br label %13

60:                                               ; preds = %42, %13
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @WL1271_BOOT_RETRIES, align 4
  %65 = call i32 @wl1271_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %110

66:                                               ; preds = %60
  %67 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @wl1271_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %73 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %77 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %79 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strncpy(i32 %80, i32 %84, i32 4)
  %86 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %87 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %66
  %91 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %92 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %92, align 8
  %94 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %93, i64 %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %90, %66
  %99 = load i32, i32* @DEBUG_MAC80211, align 4
  %100 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %101 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %106 = call i32 @wl1271_debug(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* @WLCORE_STATE_ON, align 4
  %108 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %109 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %98, %63
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @wl12xx_chip_wakeup(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_hw_init(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wlcore_disable_interrupts(%struct.wl1271*) #1

declare dso_local i32 @wl1271_flush_deferred_work(%struct.wl1271*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_power_off(%struct.wl1271*) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl1271_info(i8*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
