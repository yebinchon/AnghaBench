; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_getchan_noise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_getchan_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i64 }

@ATH_DEFAULT_NOISE_FLOOR = common dso_local global i64 0, align 8
@ATH9K_NF_CAL_NOISE_THRESH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ath9k_hw_getchan_noise(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %7 = load i64, i64* @ATH_DEFAULT_NOISE_FLOOR, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %9 = icmp ne %struct.ath9k_channel* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATH9K_NF_CAL_NOISE_THRESH, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %23 = call i64 @ath9k_hw_get_default_nf(%struct.ath_hw* %21, %struct.ath9k_channel* %22)
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27, %15
  br label %32

32:                                               ; preds = %31, %10, %2
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local i64 @ath9k_hw_get_default_nf(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
