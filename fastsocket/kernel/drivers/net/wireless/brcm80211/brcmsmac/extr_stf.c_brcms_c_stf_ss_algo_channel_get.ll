; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_ss_algo_channel_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_ss_algo_channel_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tx_power = type { i64* }

@WL_TX_POWER_MCS40_SISO_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS20_SISO_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS40_CDD_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS20_CDD_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS40_STBC_FIRST = common dso_local global i64 0, align 8
@WL_TX_POWER_MCS20_STBC_FIRST = common dso_local global i64 0, align 8
@PHY_TXC1_MODE_SISO = common dso_local global i32 0, align 4
@PHY_TXC1_MODE_CDD = common dso_local global i32 0, align 4
@PHY_TXC1_MODE_STBC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_stf_ss_algo_channel_get(%struct.brcms_c_info* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tx_power, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64*, i64** %5, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i64*, i64** %5, align 8
  store i64 -1, i64* %19, align 8
  br label %93

20:                                               ; preds = %3
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @CHSPEC_CHANNEL(i64 %26)
  %28 = call i32 @wlc_phy_txpower_get_current(i32 %25, %struct.tx_power* %7, i32 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @CHSPEC_IS40(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i64, i64* @WL_TX_POWER_MCS40_SISO_FIRST, align 8
  br label %36

34:                                               ; preds = %20
  %35 = load i64, i64* @WL_TX_POWER_MCS20_SISO_FIRST, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @CHSPEC_IS40(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @WL_TX_POWER_MCS40_CDD_FIRST, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @WL_TX_POWER_MCS20_CDD_FIRST, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @CHSPEC_IS40(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @WL_TX_POWER_MCS40_STBC_FIRST, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load i64, i64* @WL_TX_POWER_MCS20_STBC_FIRST, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %10, align 8
  %56 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 12
  %67 = icmp sgt i64 %60, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load i64*, i64** %5, align 8
  %70 = load i32, i32* @PHY_TXC1_MODE_SISO, align 4
  %71 = call i32 @setbit(i64* %69, i32 %70)
  br label %76

72:                                               ; preds = %54
  %73 = load i64*, i64** %5, align 8
  %74 = load i32, i32* @PHY_TXC1_MODE_CDD, align 4
  %75 = call i32 @setbit(i64* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %7, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 12
  %88 = icmp sle i64 %81, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load i64*, i64** %5, align 8
  %91 = load i32, i32* @PHY_TXC1_MODE_STBC, align 4
  %92 = call i32 @setbit(i64* %90, i32 %91)
  br label %93

93:                                               ; preds = %18, %89, %76
  ret void
}

declare dso_local i32 @wlc_phy_txpower_get_current(i32, %struct.tx_power*, i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i64) #1

declare dso_local i64 @CHSPEC_IS40(i64) #1

declare dso_local i32 @setbit(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
