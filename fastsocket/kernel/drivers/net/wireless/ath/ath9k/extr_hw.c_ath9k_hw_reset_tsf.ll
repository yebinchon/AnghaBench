; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset_tsf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_SLP32_MODE = common dso_local global i32 0, align 4
@AR_SLP32_TSF_WRITE_STATUS = common dso_local global i32 0, align 4
@AH_TSF_WRITE_TIMEOUT = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"AR_SLP32_TSF_WRITE_STATUS limit exceeded\0A\00", align 1
@AR_RESET_TSF = common dso_local global i32 0, align 4
@AR_RESET_TSF_ONCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_reset_tsf(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = load i32, i32* @AR_SLP32_MODE, align 4
  %5 = load i32, i32* @AR_SLP32_TSF_WRITE_STATUS, align 4
  %6 = load i32, i32* @AH_TSF_WRITE_TIMEOUT, align 4
  %7 = call i32 @ath9k_hw_wait(%struct.ath_hw* %3, i32 %4, i32 %5, i32 0, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = call i32 @ath9k_hw_common(%struct.ath_hw* %10)
  %12 = load i32, i32* @RESET, align 4
  %13 = call i32 @ath_dbg(i32 %11, i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR_RESET_TSF, align 4
  %17 = load i32, i32* @AR_RESET_TSF_ONCE, align 4
  %18 = call i32 @REG_WRITE(%struct.ath_hw* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
