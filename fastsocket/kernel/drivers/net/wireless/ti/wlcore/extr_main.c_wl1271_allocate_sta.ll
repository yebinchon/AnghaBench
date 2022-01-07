; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_allocate_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_allocate_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wl12xx_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.wl1271_station = type { i64, i32 }

@AP_MAX_STATIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"could not allocate HLID - too much stations\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not allocate HLID - too many links\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*)* @wl1271_allocate_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_allocate_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wl1271_station*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %10 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AP_MAX_STATIONS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @wl1271_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %73

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.wl1271_station*
  store %struct.wl1271_station* %23, %struct.wl1271_station** %8, align 8
  %24 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %26 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %27 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %26, i32 0, i32 0
  %28 = call i32 @wl12xx_allocate_link(%struct.wl1271* %24, %struct.wl12xx_vif* %25, i64* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = call i32 @wl1271_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %73

35:                                               ; preds = %19
  %36 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %37 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %43 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %38, i32* %46, align 4
  %47 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %48 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %51 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_bit(i64 %49, i32 %53)
  %55 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %59 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = call i32 @memcpy(i32 %63, i32 %66, i32 %67)
  %69 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %35, %31, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @wl12xx_allocate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
