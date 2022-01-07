; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_set_ofdm_weak_signal_detection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_set_ofdm_weak_signal_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ath5k_ani_set_ofdm_weak_signal_detection.m1l = internal constant [2 x i32] [i32 127, i32 50], align 4
@ath5k_ani_set_ofdm_weak_signal_detection.m2l = internal constant [2 x i32] [i32 127, i32 40], align 4
@ath5k_ani_set_ofdm_weak_signal_detection.m1 = internal constant [2 x i32] [i32 127, i32 77], align 4
@ath5k_ani_set_ofdm_weak_signal_detection.m2 = internal constant [2 x i32] [i32 127, i32 64], align 4
@ath5k_ani_set_ofdm_weak_signal_detection.m2cnt = internal constant [2 x i32] [i32 31, i32 16], align 4
@ath5k_ani_set_ofdm_weak_signal_detection.m2lcnt = internal constant [2 x i32] [i32 63, i32 48], align 4
@AR5K_PHY_WEAK_OFDM_LOW_THR = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_LOW_THR_M1 = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_LOW_THR_M2 = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_HIGH_THR = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_HIGH_THR_M1 = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_HIGH_THR_M2 = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_HIGH_THR_M2_COUNT = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_LOW_THR_M2_COUNT = common dso_local global i32 0, align 4
@AR5K_PHY_WEAK_OFDM_LOW_THR_SELFCOR_EN = common dso_local global i32 0, align 4
@ATH5K_DEBUG_ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"turned %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %6 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR, align 4
  %7 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR_M1, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_ofdm_weak_signal_detection.m1l, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %5, i32 %6, i32 %7, i32 %11)
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %14 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR, align 4
  %15 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR_M2, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_ofdm_weak_signal_detection.m2l, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %13, i32 %14, i32 %15, i32 %19)
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %22 = load i32, i32* @AR5K_PHY_WEAK_OFDM_HIGH_THR, align 4
  %23 = load i32, i32* @AR5K_PHY_WEAK_OFDM_HIGH_THR_M1, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_ofdm_weak_signal_detection.m1, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %21, i32 %22, i32 %23, i32 %27)
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %30 = load i32, i32* @AR5K_PHY_WEAK_OFDM_HIGH_THR, align 4
  %31 = load i32, i32* @AR5K_PHY_WEAK_OFDM_HIGH_THR_M2, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_ofdm_weak_signal_detection.m2, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %29, i32 %30, i32 %31, i32 %35)
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %38 = load i32, i32* @AR5K_PHY_WEAK_OFDM_HIGH_THR, align 4
  %39 = load i32, i32* @AR5K_PHY_WEAK_OFDM_HIGH_THR_M2_COUNT, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_ofdm_weak_signal_detection.m2cnt, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %37, i32 %38, i32 %39, i32 %43)
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %46 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR, align 4
  %47 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR_M2_COUNT, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* @ath5k_ani_set_ofdm_weak_signal_detection.m2lcnt, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %45, i32 %46, i32 %47, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %57 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR, align 4
  %58 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR_SELFCOR_EN, align 4
  %59 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %56, i32 %57, i32 %58)
  br label %65

60:                                               ; preds = %2
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %62 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR, align 4
  %63 = load i32, i32* @AR5K_PHY_WEAK_OFDM_LOW_THR_SELFCOR_EN, align 4
  %64 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %70, i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %75)
  ret void
}

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
