; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_init_nfcal_hist_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_init_nfcal_hist_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath9k_nfcal_hist*, i32, i32, i32 }
%struct.ath9k_nfcal_hist = type { i8**, i32, i8*, i64 }
%struct.ath9k_channel = type { i32, i32, i32 }

@NUM_NF_READINGS = common dso_local global i32 0, align 4
@AR_PHY_CCA_FILTERWINDOW_LENGTH = common dso_local global i32 0, align 4
@ATH9K_NF_CAL_HIST_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_init_nfcal_hist_buffer(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ath9k_nfcal_hist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %9 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %10 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %11, i32* %15, align 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %18, i32* %22, align 4
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %33, align 8
  store %struct.ath9k_nfcal_hist* %34, %struct.ath9k_nfcal_hist** %5, align 8
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %37 = call i8* @ath9k_hw_get_default_nf(%struct.ath_hw* %35, %struct.ath9k_channel* %36)
  store i8* %37, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %79, %2
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NUM_NF_READINGS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %38
  %43 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %43, i64 %45
  %47 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %49, i64 %51
  %53 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %52, i32 0, i32 2
  store i8* %48, i8** %53, align 8
  %54 = load i32, i32* @AR_PHY_CCA_FILTERWINDOW_LENGTH, align 4
  %55 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %55, i64 %57
  %59 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %58, i32 0, i32 1
  store i32 %54, i32* %59, align 8
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %75, %42
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ATH9K_NF_CAL_HIST_MAX, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %66, i64 %68
  %70 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %65, i8** %74, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %60

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %38

82:                                               ; preds = %38
  ret void
}

declare dso_local i8* @ath9k_hw_get_default_nf(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
