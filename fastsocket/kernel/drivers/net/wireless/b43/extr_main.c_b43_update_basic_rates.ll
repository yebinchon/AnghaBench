; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_update_basic_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_update_basic_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }

@B43_SHM_SH_CCKDIRECT = common dso_local global i32 0, align 4
@B43_SHM_SH_CCKBASIC = common dso_local global i32 0, align 4
@B43_SHM_SH_OFDMDIRECT = common dso_local global i32 0, align 4
@B43_SHM_SH_OFDMBASIC = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_update_basic_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_update_basic_rates(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %20, align 8
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i64 @b43_current_band(%struct.TYPE_6__* %24)
  %26 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, i64 %25
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %26, align 8
  store %struct.ieee80211_supported_band* %27, %struct.ieee80211_supported_band** %5, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %106, %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 1
  %37 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %37, i64 %39
  store %struct.ieee80211_rate* %40, %struct.ieee80211_rate** %6, align 8
  %41 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @b43_is_cck_rate(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i32, i32* @B43_SHM_SH_CCKDIRECT, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @B43_SHM_SH_CCKBASIC, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @b43_plcp_get_ratecode_cck(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 15
  store i32 %54, i32* %10, align 4
  br label %64

55:                                               ; preds = %34
  %56 = load i32, i32* @B43_SHM_SH_OFDMDIRECT, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @B43_SHM_SH_OFDMBASIC, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @b43_plcp_get_ratecode_ofdm(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 15
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %55, %46
  %65 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.ieee80211_rate* @ieee80211_get_response_rate(%struct.ieee80211_supported_band* %65, i32 %66, i32 %69)
  store %struct.ieee80211_rate* %70, %struct.ieee80211_rate** %6, align 8
  %71 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @b43_is_cck_rate(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @b43_plcp_get_ratecode_cck(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 15
  store i32 %82, i32* %11, align 4
  br label %90

83:                                               ; preds = %64
  %84 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @b43_plcp_get_ratecode_ofdm(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 15
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %83, %76
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = load i32, i32* @B43_SHM_SHARED, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 2, %94
  %96 = add nsw i32 %93, %95
  %97 = call i32 @b43_shm_read16(%struct.b43_wldev* %91, i32 %92, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = load i32, i32* @B43_SHM_SHARED, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 %100, %102
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @b43_shm_write16(%struct.b43_wldev* %98, i32 %99, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %90
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %28

109:                                              ; preds = %28
  ret void
}

declare dso_local i64 @b43_current_band(%struct.TYPE_6__*) #1

declare dso_local i64 @b43_is_cck_rate(i32) #1

declare dso_local i32 @b43_plcp_get_ratecode_cck(i32) #1

declare dso_local i32 @b43_plcp_get_ratecode_ofdm(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_response_rate(%struct.ieee80211_supported_band*, i32, i32) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
