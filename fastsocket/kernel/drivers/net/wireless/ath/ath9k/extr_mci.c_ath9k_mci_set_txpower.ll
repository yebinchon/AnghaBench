; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_set_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_5__, %struct.ath9k_hw_cal_data, %struct.ath_hw* }
%struct.TYPE_5__ = type { i32 }
%struct.ath9k_hw_cal_data = type { i64, i32 }
%struct.ath_hw = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32 }

@ATH_MCI_CONFIG_CONCUR_TX = common dso_local global i32 0, align 4
@CHANNEL_G_HT40PLUS = common dso_local global i64 0, align 8
@CHANNEL_G_HT40MINUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_mci_set_txpower(%struct.ath_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_hw_mci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath9k_hw_cal_data*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %7, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.ath9k_hw_mci* %18, %struct.ath9k_hw_mci** %8, align 8
  %19 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %20 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATH_MCI_CONFIG_CONCUR_TX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %30 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %119

31:                                               ; preds = %3
  %32 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @IS_CHAN_2GHZ(%struct.TYPE_6__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %119

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %102

41:                                               ; preds = %38
  %42 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 1
  store %struct.ath9k_hw_cal_data* %43, %struct.ath9k_hw_cal_data** %10, align 8
  %44 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %45 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHANNEL_G_HT40PLUS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %41
  %50 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %56 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %49
  %60 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %61 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %66 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 20
  %69 = icmp sle i32 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %119

71:                                               ; preds = %59, %49, %41
  %72 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %73 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHANNEL_G_HT40MINUS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %71
  %78 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %84 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %77
  %88 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %94 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 20
  %97 = icmp sge i32 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %119

99:                                               ; preds = %87, %77, %71
  %100 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %101 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  br label %106

102:                                              ; preds = %38
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %105 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %109 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %114 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %115 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw* %113, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %28, %37, %70, %98, %112, %106
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.TYPE_6__*) #1

declare dso_local i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
