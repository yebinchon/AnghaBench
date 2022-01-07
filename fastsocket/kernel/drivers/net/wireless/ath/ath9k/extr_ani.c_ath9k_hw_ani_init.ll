; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__, i32, %struct.ath9k_channel* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }
%struct.ath9k_channel = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Initialize ANI\0A\00", align 1
@ATH9K_ANI_OFDM_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_LOW = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_TRIG_LOW = common dso_local global i32 0, align 4
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_USE_OFDM_WEAK_SIG = common dso_local global i32 0, align 4
@ATH9K_ANI_CCK_DEF_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_DEF_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_PERIOD = common dso_local global i32 0, align 4
@ATH9K_ANI_POLLINTERVAL = common dso_local global i32 0, align 4
@HAL_PROCESS_ANI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_ani_init(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ar5416AniState*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %10 = load i32, i32* @ANI, align 4
  %11 = call i32 @ath_dbg(%struct.ath_common* %9, i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_HIGH, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_LOW, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @ATH9K_ANI_CCK_TRIG_HIGH, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @ATH9K_ANI_CCK_TRIG_LOW, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %68, %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 3
  %32 = load %struct.ath9k_channel*, %struct.ath9k_channel** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.ath9k_channel* %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %28
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 3
  %38 = load %struct.ath9k_channel*, %struct.ath9k_channel** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %38, i64 %40
  store %struct.ath9k_channel* %41, %struct.ath9k_channel** %5, align 8
  %42 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %43 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %42, i32 0, i32 0
  store %struct.ar5416AniState* %43, %struct.ar5416AniState** %6, align 8
  %44 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 4
  %45 = load %struct.ar5416AniState*, %struct.ar5416AniState** %6, align 8
  %46 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ATH9K_ANI_FIRSTEP_LVL, align 4
  %48 = load %struct.ar5416AniState*, %struct.ar5416AniState** %6, align 8
  %49 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.ar5416AniState*, %struct.ar5416AniState** %6, align 8
  %56 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ar5416AniState*, %struct.ar5416AniState** %6, align 8
  %58 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @ATH9K_ANI_USE_OFDM_WEAK_SIG, align 4
  %60 = load %struct.ar5416AniState*, %struct.ar5416AniState** %6, align 8
  %61 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ATH9K_ANI_CCK_DEF_LEVEL, align 4
  %63 = load %struct.ar5416AniState*, %struct.ar5416AniState** %6, align 8
  %64 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ATH9K_ANI_OFDM_DEF_LEVEL, align 4
  %66 = load %struct.ar5416AniState*, %struct.ar5416AniState** %6, align 8
  %67 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %35
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %28

71:                                               ; preds = %28
  %72 = load i32, i32* @ATH9K_ANI_PERIOD, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @ATH9K_ANI_POLLINTERVAL, align 4
  %76 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load i32, i32* @HAL_PROCESS_ANI, align 4
  %86 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %71
  %91 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %92 = call i32 @ath9k_ani_restart(%struct.ath_hw* %91)
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = call i32 @ath9k_enable_mib_counters(%struct.ath_hw* %93)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ani_restart(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_enable_mib_counters(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
