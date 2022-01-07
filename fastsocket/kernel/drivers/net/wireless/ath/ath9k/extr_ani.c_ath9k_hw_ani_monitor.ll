; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i32, i32, i32, i32, i32, i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"listenTime=%d OFDM:%d errs=%d/s CCK:%d errs=%d/s ofdm_turn=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_ani_monitor(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ar5416AniState*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %6, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call i32 @DO_ANI(%struct.ath_hw* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %121

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.ar5416AniState* %19, %struct.ar5416AniState** %5, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = call i32 @ath9k_hw_ani_read_counters(%struct.ath_hw* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %121

24:                                               ; preds = %15
  %25 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %26 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %30 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %35 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %39 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  %43 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %44 = load i32, i32* @ANI, align 4
  %45 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %46 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %49 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %53 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %57 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ath_dbg(%struct.ath_common* %43, i32 %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i64 %51, i32 %54, i64 %55, i32 %58)
  %60 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %61 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %24
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %83 = call i32 @ath9k_hw_ani_lower_immunity(%struct.ath_hw* %82)
  %84 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %85 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %91 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %118

92:                                               ; preds = %74, %67
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %93, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = call i32 @ath9k_hw_ani_ofdm_err_trigger(%struct.ath_hw* %100)
  %102 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %103 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  br label %117

104:                                              ; preds = %92
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %107 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %105, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = call i32 @ath9k_hw_ani_cck_err_trigger(%struct.ath_hw* %112)
  %114 = load %struct.ar5416AniState*, %struct.ar5416AniState** %5, align 8
  %115 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %114, i32 0, i32 3
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %104
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %81
  %119 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %120 = call i32 @ath9k_ani_restart(%struct.ath_hw* %119)
  br label %121

121:                                              ; preds = %14, %23, %118, %24
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @DO_ANI(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_read_counters(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ath9k_hw_ani_lower_immunity(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_ofdm_err_trigger(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_cck_err_trigger(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ani_restart(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
