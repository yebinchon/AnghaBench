; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_get_channel_centers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_get_channel_centers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i64, i64 }
%struct.chan_centers = type { i64, i64, i64 }

@CHANNEL_A_HT40PLUS = common dso_local global i64 0, align 8
@CHANNEL_G_HT40PLUS = common dso_local global i64 0, align 8
@HT40_CHANNEL_CENTER_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_get_channel_centers(%struct.ath_hw* %0, %struct.ath9k_channel* %1, %struct.chan_centers* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.chan_centers*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store %struct.chan_centers* %2, %struct.chan_centers** %6, align 8
  %8 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %9 = call i32 @IS_CHAN_HT40(%struct.ath9k_channel* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %16 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %18 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %17, i32 0, i32 1
  store i64 %14, i64* %18, align 8
  %19 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %20 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %19, i32 0, i32 2
  store i64 %14, i64* %20, align 8
  br label %72

21:                                               ; preds = %3
  %22 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHANNEL_A_HT40PLUS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %29 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHANNEL_G_HT40PLUS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27, %21
  %34 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %41 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 1, i32* %7, align 4
  br label %51

42:                                               ; preds = %27
  %43 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %44 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %50 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 -1, i32* %7, align 4
  br label %51

51:                                               ; preds = %42, %33
  %52 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %53 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %54, %58
  %60 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %61 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %63 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @HT40_CHANNEL_CENTER_SHIFT, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = load %struct.chan_centers*, %struct.chan_centers** %6, align 8
  %71 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
