; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_lower_immunity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_lower_immunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_ani_lower_immunity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_ani_lower_immunity(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar5416AniState*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ar5416AniState* %7, %struct.ar5416AniState** %3, align 8
  %8 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %9 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %14 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %19 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17, %12
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %25 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @ath9k_hw_set_ofdm_nil(%struct.ath_hw* %23, i64 %27, i32 0)
  br label %41

29:                                               ; preds = %17, %1
  %30 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %31 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %37 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @ath9k_hw_set_cck_nil(%struct.ath_hw* %35, i64 %39, i32 0)
  br label %41

41:                                               ; preds = %22, %34, %29
  ret void
}

declare dso_local i32 @ath9k_hw_set_ofdm_nil(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_set_cck_nil(%struct.ath_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
