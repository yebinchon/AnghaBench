; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_init_cal_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_init_cal_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32, i32 }

@MCI_BT_AWAKE = common dso_local global i64 0, align 8
@ATH_MCI_CONFIG_DISABLE_MCI_CAL = common dso_local global i32 0, align 4
@MCI_GPM_WLAN_CAL_DONE = common dso_local global i32 0, align 4
@MCI_GPM_WLAN_CAL_W_SEQUENCE = common dso_local global i64 0, align 8
@MCI_GPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_init_cal_done(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_mci*, align 8
  %4 = alloca [4 x i64], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ath9k_hw_mci* %7, %struct.ath9k_hw_mci** %3, align 8
  %8 = bitcast [4 x i64]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %10 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MCI_BT_AWAKE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %16 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATH_MCI_CONFIG_DISABLE_MCI_CAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  br label %37

22:                                               ; preds = %14
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %24 = load i32, i32* @MCI_GPM_WLAN_CAL_DONE, align 4
  %25 = call i32 @MCI_GPM_SET_CAL_TYPE(i64* %23, i32 %24)
  %26 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %3, align 8
  %27 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = sext i32 %28 to i64
  %31 = load i64, i64* @MCI_GPM_WLAN_CAL_W_SEQUENCE, align 8
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %31
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load i32, i32* @MCI_GPM, align 4
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %36 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %33, i32 %34, i32 0, i64* %35, i32 16, i32 1, i32 0)
  br label %37

37:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MCI_GPM_SET_CAL_TYPE(i64*, i32) #2

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i64*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
