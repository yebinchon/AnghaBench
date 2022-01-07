; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_init_cal_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_init_cal_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32, i32 }
%struct.ath_common = type { i32 }

@MCI_BT_AWAKE = common dso_local global i64 0, align 8
@ATH_MCI_CONFIG_DISABLE_MCI_CAL = common dso_local global i32 0, align 4
@MCI_GPM_WLAN_CAL_REQ = common dso_local global i32 0, align 4
@MCI_GPM_WLAN_CAL_W_SEQUENCE = common dso_local global i64 0, align 8
@MCI_GPM = common dso_local global i32 0, align 4
@MCI_GPM_BT_CAL_GRANT = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MCI BT_CAL_GRANT received\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"MCI BT_CAL_GRANT not received\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_init_cal_req(%struct.ath_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_hw_mci*, align 8
  %7 = alloca [4 x i64], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %5, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ath9k_hw_mci* %12, %struct.ath9k_hw_mci** %6, align 8
  %13 = bitcast [4 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %15 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MCI_BT_AWAKE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %21 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATH_MCI_CONFIG_DISABLE_MCI_CAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %2
  br label %55

27:                                               ; preds = %19
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %29 = load i32, i32* @MCI_GPM_WLAN_CAL_REQ, align 4
  %30 = call i32 @MCI_GPM_SET_CAL_TYPE(i64* %28, i32 %29)
  %31 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %32 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = sext i32 %33 to i64
  %36 = load i64, i64* @MCI_GPM_WLAN_CAL_W_SEQUENCE, align 8
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %36
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = load i32, i32* @MCI_GPM, align 4
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %41 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %38, i32 %39, i32 0, i64* %40, i32 16, i32 1, i32 0)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* @MCI_GPM_BT_CAL_GRANT, align 4
  %44 = call i64 @ar9003_mci_wait_for_gpm(%struct.ath_hw* %42, i32 %43, i32 0, i32 50000)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %48 = load i32, i32* @MCI, align 4
  %49 = call i32 @ath_dbg(%struct.ath_common* %47, i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %55

50:                                               ; preds = %27
  %51 = load i32*, i32** %4, align 8
  store i32 0, i32* %51, align 4
  %52 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %53 = load i32, i32* @MCI, align 4
  %54 = call i32 @ath_dbg(%struct.ath_common* %52, i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %26, %50, %46
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MCI_GPM_SET_CAL_TYPE(i64*, i32) #1

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i64*, i32, i32, i32) #1

declare dso_local i64 @ar9003_mci_wait_for_gpm(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
