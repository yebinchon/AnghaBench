; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_rateset_get_hwrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_rateset_get_hwrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_rateset = type { i32 }
%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@BRCM_BAND_5G = common dso_local global i64 0, align 8
@ofdm_mimo_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@cck_ofdm_mimo_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@cck_ofdm_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@cck_rates = common dso_local global %struct.brcms_c_rateset zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcms_c_rateset* (%struct.brcms_c_info*)* @brcms_c_rateset_get_hwrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcms_c_rateset* @brcms_c_rateset_get_hwrs(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_c_rateset*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %4 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call i64 @BRCMS_PHY_11N_CAP(%struct.TYPE_2__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %11 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BRCM_BAND_5G, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store %struct.brcms_c_rateset* @ofdm_mimo_rates, %struct.brcms_c_rateset** %3, align 8
  br label %19

18:                                               ; preds = %9
  store %struct.brcms_c_rateset* @cck_ofdm_mimo_rates, %struct.brcms_c_rateset** %3, align 8
  br label %19

19:                                               ; preds = %18, %17
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store %struct.brcms_c_rateset* @cck_ofdm_rates, %struct.brcms_c_rateset** %3, align 8
  br label %29

28:                                               ; preds = %20
  store %struct.brcms_c_rateset* @cck_rates, %struct.brcms_c_rateset** %3, align 8
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %3, align 8
  ret %struct.brcms_c_rateset* %31
}

declare dso_local i64 @BRCMS_PHY_11N_CAP(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
