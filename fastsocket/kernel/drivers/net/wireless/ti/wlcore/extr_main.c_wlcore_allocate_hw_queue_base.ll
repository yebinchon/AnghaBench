; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_allocate_hw_queue_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_allocate_hw_queue_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64*, i32 }
%struct.wl12xx_vif = type { i32, i64 }
%struct.ieee80211_vif = type { i32*, i32 }
%struct.wlcore_hw_queue_iter_data = type { i32, i64, %struct.ieee80211_vif* }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@wlcore_hw_queue_iter = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using pre-allocated hw queue base %d\00", align 1
@WLCORE_NUM_MAC_ADDRESSES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"allocating hw queue base: %d\00", align 1
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wlcore_allocate_hw_queue_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_allocate_hw_queue_base(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.wlcore_hw_queue_iter_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %11 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %10)
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %6, align 8
  %12 = bitcast %struct.wlcore_hw_queue_iter_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %7, i32 0, i32 2
  store %struct.ieee80211_vif* %13, %struct.ieee80211_vif** %14, align 8
  %15 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %19 = load i32, i32* @wlcore_hw_queue_iter, align 4
  %20 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %17, i32 %18, i32 %19, %struct.wlcore_hw_queue_iter_data* %7)
  %21 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %7, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @DEBUG_MAC80211, align 4
  %33 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %34 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wl1271_debug(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %89

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WLCORE_NUM_MAC_ADDRESSES, align 4
  %41 = call i32 @find_first_zero_bit(i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @WLCORE_NUM_MAC_ADDRESSES, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %112

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @NUM_TX_QUEUES, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %53 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @DEBUG_MAC80211, align 4
  %55 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %56 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @wl1271_debug(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %85, %48
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @NUM_TX_QUEUES, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %68 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %66, i64 %72
  store i64 0, i64* %73, align 8
  %74 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %75 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %63
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %59

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88, %24
  %90 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %91 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32, i32* @NUM_TX_QUEUES, align 4
  %97 = load i32, i32* @WLCORE_NUM_MAC_ADDRESSES, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %100 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @NUM_TX_QUEUES, align 4
  %103 = sdiv i32 %101, %102
  %104 = add nsw i32 %98, %103
  %105 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  br label %111

107:                                              ; preds = %89
  %108 = load i32, i32* @IEEE80211_INVAL_HW_QUEUE, align 4
  %109 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %95
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %45
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.wlcore_hw_queue_iter_data*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
