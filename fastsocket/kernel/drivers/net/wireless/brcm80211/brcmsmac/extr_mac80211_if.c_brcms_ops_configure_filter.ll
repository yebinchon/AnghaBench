; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ops_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ops_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.brcms_info* }
%struct.brcms_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@MAC_FILTERS = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FIF_PROMISC_IN_BSS\0A\00", align 1
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"FIF_ALLMULTI\0A\00", align 1
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"FIF_FCSFAIL\0A\00", align 1
@FIF_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"FIF_CONTROL\0A\00", align 1
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"FIF_OTHER_BSS\0A\00", align 1
@FIF_PSPOLL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"FIF_PSPOLL\0A\00", align 1
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"FIF_BCN_PRBRESP_PROMISC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @brcms_ops_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_ops_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcms_info*, align 8
  %10 = alloca %struct.bcma_device*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.brcms_info*, %struct.brcms_info** %12, align 8
  store %struct.brcms_info* %13, %struct.brcms_info** %9, align 8
  %14 = load %struct.brcms_info*, %struct.brcms_info** %9, align 8
  %15 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.bcma_device*, %struct.bcma_device** %19, align 8
  store %struct.bcma_device* %20, %struct.bcma_device** %10, align 8
  %21 = load i32, i32* @MAC_FILTERS, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @MAC_FILTERS, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %34 = call i32 @brcms_dbg_info(%struct.bcma_device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FIF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %42 = call i32 @brcms_dbg_info(%struct.bcma_device* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FIF_FCSFAIL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %50 = call i32 @brcms_dbg_info(%struct.bcma_device* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FIF_CONTROL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %58 = call i32 @brcms_dbg_info(%struct.bcma_device* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @FIF_OTHER_BSS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %66 = call i32 @brcms_dbg_info(%struct.bcma_device* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @FIF_PSPOLL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %74 = call i32 @brcms_dbg_info(%struct.bcma_device* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %82 = call i32 @brcms_dbg_info(%struct.bcma_device* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.brcms_info*, %struct.brcms_info** %9, align 8
  %85 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.brcms_info*, %struct.brcms_info** %9, align 8
  %88 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @brcms_c_mac_promisc(%struct.TYPE_4__* %89, i32 %91)
  %93 = load %struct.brcms_info*, %struct.brcms_info** %9, align 8
  %94 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_bh(i32* %94)
  ret void
}

declare dso_local i32 @brcms_dbg_info(%struct.bcma_device*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @brcms_c_mac_promisc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
