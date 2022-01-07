; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_cal_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_cal_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32 }
%struct.ath_common = type { i32 }

@MCI_BT_AWAKE = common dso_local global i32 0, align 4
@MCI_BT_CAL_START = common dso_local global i32 0, align 4
@RESET_TYPE_MCI = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MCI State : %d\0A\00", align 1
@MCI_GPM_WLAN_CAL_DONE = common dso_local global i32 0, align 4
@MCI_GPM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown GPM CAL message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32, i32*)* @ath_mci_cal_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_mci_cal_msg(%struct.ath_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_hw_mci*, align 8
  %10 = alloca [4 x i32], align 16
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %7, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %8, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ath9k_hw_mci* %18, %struct.ath9k_hw_mci** %9, align 8
  %19 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %51 [
    i32 128, label %21
    i32 129, label %41
  ]

21:                                               ; preds = %3
  %22 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MCI_BT_AWAKE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @MCI_BT_CAL_START, align 4
  %29 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %30 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %32 = load i32, i32* @RESET_TYPE_MCI, align 4
  %33 = call i32 @ath9k_queue_reset(%struct.ath_softc* %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %36 = load i32, i32* @MCI, align 4
  %37 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %38 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %35, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %55

41:                                               ; preds = %3
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %43 = load i32, i32* @MCI_GPM_WLAN_CAL_DONE, align 4
  %44 = call i32 @MCI_GPM_SET_CAL_TYPE(i32* %42, i32 %43)
  %45 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %45, i32 0, i32 0
  %47 = load %struct.ath_hw*, %struct.ath_hw** %46, align 8
  %48 = load i32, i32* @MCI_GPM, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %50 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %47, i32 %48, i32 0, i32* %49, i32 16, i32 0, i32 1)
  br label %55

51:                                               ; preds = %3
  %52 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %53 = load i32, i32* @MCI, align 4
  %54 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %52, i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %41, %34
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @MCI_GPM_SET_CAL_TYPE(i32*, i32) #1

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
