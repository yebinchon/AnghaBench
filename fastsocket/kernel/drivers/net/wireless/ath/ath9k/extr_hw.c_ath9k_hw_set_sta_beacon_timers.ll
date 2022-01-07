; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_sta_beacon_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_sta_beacon_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_hw_capabilities }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath9k_beacon_state = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.ath_common = type { i32 }

@AR_NEXT_TBTT_TIMER = common dso_local global i32 0, align 4
@AR_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_DMA_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_RSSI_THR = common dso_local global i32 0, align 4
@AR_RSSI_THR_BM_THR = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"next DTIM %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"next beacon %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"beacon period %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DTIM period %d\0A\00", align 1
@AR_NEXT_DTIM = common dso_local global i32 0, align 4
@SLEEP_SLOP = common dso_local global i64 0, align 8
@AR_NEXT_TIM = common dso_local global i32 0, align 4
@AR_SLEEP1 = common dso_local global i32 0, align 4
@CAB_TIMEOUT_VAL = common dso_local global i32 0, align 4
@AR_SLEEP1_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR_SLEEP1_ASSUME_DTIM = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@BEACON_TIMEOUT_VAL = common dso_local global i32 0, align 4
@MIN_BEACON_TIMEOUT_VAL = common dso_local global i64 0, align 8
@AR_SLEEP2 = common dso_local global i32 0, align 4
@AR_SLEEP2_BEACON_TIMEOUT = common dso_local global i32 0, align 4
@AR_TIM_PERIOD = common dso_local global i32 0, align 4
@AR_DTIM_PERIOD = common dso_local global i32 0, align 4
@AR_TIMER_MODE = common dso_local global i32 0, align 4
@AR_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@AR_TIM_TIMER_EN = common dso_local global i32 0, align 4
@AR_DTIM_TIMER_EN = common dso_local global i32 0, align 4
@AR_TSFOOR_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_sta_beacon_timers(%struct.ath_hw* %0, %struct.ath9k_beacon_state* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_beacon_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ath9k_hw_capabilities*, align 8
  %10 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_beacon_state* %1, %struct.ath9k_beacon_state** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  store %struct.ath9k_hw_capabilities* %12, %struct.ath9k_hw_capabilities** %9, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %10, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* @AR_NEXT_TBTT_TIMER, align 4
  %19 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %20 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @TU_TO_USEC(i64 %21)
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %18, i32 %22)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = load i32, i32* @AR_BEACON_PERIOD, align 4
  %26 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %27 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @TU_TO_USEC(i64 %28)
  %30 = call i32 @REG_WRITE(%struct.ath_hw* %24, i32 %25, i32 %29)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = load i32, i32* @AR_DMA_BEACON_PERIOD, align 4
  %33 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %34 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @TU_TO_USEC(i64 %35)
  %37 = call i32 @REG_WRITE(%struct.ath_hw* %31, i32 %32, i32 %36)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* @AR_RSSI_THR, align 4
  %42 = load i32, i32* @AR_RSSI_THR_BM_THR, align 4
  %43 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %44 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %40, i32 %41, i32 %42, i32 %45)
  %47 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %48 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  %50 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %51 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %2
  %56 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %57 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %55, %2
  %60 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %61 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  %63 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %64 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %70 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %78 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  br label %84

80:                                               ; preds = %72
  %81 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %82 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %86 = load i32, i32* @BEACON, align 4
  %87 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %88 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ath_dbg(%struct.ath_common* %85, i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %89)
  %91 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %92 = load i32, i32* @BEACON, align 4
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @ath_dbg(%struct.ath_common* %91, i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  %95 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %96 = load i32, i32* @BEACON, align 4
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @ath_dbg(%struct.ath_common* %95, i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %100 = load i32, i32* @BEACON, align 4
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @ath_dbg(%struct.ath_common* %99, i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  %103 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %104 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %103)
  %105 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %106 = load i32, i32* @AR_NEXT_DTIM, align 4
  %107 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %108 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SLEEP_SLOP, align 8
  %111 = sub nsw i64 %109, %110
  %112 = call i32 @TU_TO_USEC(i64 %111)
  %113 = call i32 @REG_WRITE(%struct.ath_hw* %105, i32 %106, i32 %112)
  %114 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %115 = load i32, i32* @AR_NEXT_TIM, align 4
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @SLEEP_SLOP, align 8
  %118 = sub nsw i64 %116, %117
  %119 = call i32 @TU_TO_USEC(i64 %118)
  %120 = call i32 @REG_WRITE(%struct.ath_hw* %114, i32 %115, i32 %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = load i32, i32* @AR_SLEEP1, align 4
  %123 = load i32, i32* @CAB_TIMEOUT_VAL, align 4
  %124 = shl i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* @AR_SLEEP1_CAB_TIMEOUT, align 4
  %127 = call i32 @SM(i64 %125, i32 %126)
  %128 = load i32, i32* @AR_SLEEP1_ASSUME_DTIM, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @REG_WRITE(%struct.ath_hw* %121, i32 %122, i32 %129)
  %131 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %9, align 8
  %132 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %84
  %138 = load i32, i32* @BEACON_TIMEOUT_VAL, align 4
  %139 = shl i32 %138, 3
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %8, align 8
  br label %143

141:                                              ; preds = %84
  %142 = load i64, i64* @MIN_BEACON_TIMEOUT_VAL, align 8
  store i64 %142, i64* %8, align 8
  br label %143

143:                                              ; preds = %141, %137
  %144 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %145 = load i32, i32* @AR_SLEEP2, align 4
  %146 = load i64, i64* %8, align 8
  %147 = load i32, i32* @AR_SLEEP2_BEACON_TIMEOUT, align 4
  %148 = call i32 @SM(i64 %146, i32 %147)
  %149 = call i32 @REG_WRITE(%struct.ath_hw* %144, i32 %145, i32 %148)
  %150 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %151 = load i32, i32* @AR_TIM_PERIOD, align 4
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @TU_TO_USEC(i64 %152)
  %154 = call i32 @REG_WRITE(%struct.ath_hw* %150, i32 %151, i32 %153)
  %155 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %156 = load i32, i32* @AR_DTIM_PERIOD, align 4
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @TU_TO_USEC(i64 %157)
  %159 = call i32 @REG_WRITE(%struct.ath_hw* %155, i32 %156, i32 %158)
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %160)
  %162 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %163 = load i32, i32* @AR_TIMER_MODE, align 4
  %164 = load i32, i32* @AR_TBTT_TIMER_EN, align 4
  %165 = load i32, i32* @AR_TIM_TIMER_EN, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @AR_DTIM_TIMER_EN, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @REG_SET_BIT(%struct.ath_hw* %162, i32 %163, i32 %168)
  %170 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %171 = load i32, i32* @AR_TSFOOR_THRESHOLD, align 4
  %172 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %4, align 8
  %173 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @REG_WRITE(%struct.ath_hw* %170, i32 %171, i32 %174)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @TU_TO_USEC(i64) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @SM(i64, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
