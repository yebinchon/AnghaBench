; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_stopdmarecv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_stopdmarecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_MACMISC = common dso_local global i32 0, align 4
@AR_MACMISC_DMA_OBS_LINE_8 = common dso_local global i32 0, align 4
@AR_MACMISC_DMA_OBS_S = common dso_local global i32 0, align 4
@AR_MACMISC_MISC_OBS_BUS_1 = common dso_local global i32 0, align 4
@AR_MACMISC_MISC_OBS_BUS_MSB_S = common dso_local global i32 0, align 4
@AR_CR = common dso_local global i32 0, align 4
@AR_CR_RXD = common dso_local global i32 0, align 4
@AH_TIME_QUANTUM = common dso_local global i32 0, align 4
@AR_CR_RXE = common dso_local global i32 0, align 4
@AR_DMADBG_7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"DMA failed to stop in %d ms AR_CR=0x%08x AR_DIAG_SW=0x%08x DMADBG_7=0x%08x\0A\00", align 1
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AH_RX_STOP_DMA_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_stopdmarecv(%struct.ath_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = load i32, i32* @AR_MACMISC, align 4
  %14 = load i32, i32* @AR_MACMISC_DMA_OBS_LINE_8, align 4
  %15 = load i32, i32* @AR_MACMISC_DMA_OBS_S, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @AR_MACMISC_MISC_OBS_BUS_1, align 4
  %18 = load i32, i32* @AR_MACMISC_MISC_OBS_BUS_MSB_S, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = call i32 @REG_WRITE(%struct.ath_hw* %12, i32 %13, i32 %20)
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = load i32, i32* @AR_CR, align 4
  %24 = load i32, i32* @AR_CR_RXD, align 4
  %25 = call i32 @REG_WRITE(%struct.ath_hw* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @AH_TIME_QUANTUM, align 4
  %27 = sdiv i32 10000, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %61, %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = load i32, i32* @AR_CR, align 4
  %34 = call i32 @REG_READ(%struct.ath_hw* %32, i32 %33)
  %35 = load i32, i32* @AR_CR_RXE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %64

39:                                               ; preds = %31
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %39
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = load i32, i32* @AR_DMADBG_7, align 4
  %46 = call i32 @REG_READ(%struct.ath_hw* %44, i32 %45)
  %47 = and i32 %46, 2032
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 448
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  store i32 1, i32* %55, align 4
  br label %64

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %39
  %59 = load i32, i32* @AH_TIME_QUANTUM, align 4
  %60 = call i32 @udelay(i32 %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %9, align 4
  br label %28

64:                                               ; preds = %54, %38, %28
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %69 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %70 = load i32, i32* @AR_CR, align 4
  %71 = call i32 @REG_READ(%struct.ath_hw* %69, i32 %70)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %73 = load i32, i32* @AR_DIAG_SW, align 4
  %74 = call i32 @REG_READ(%struct.ath_hw* %72, i32 %73)
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = load i32, i32* @AR_DMADBG_7, align 4
  %77 = call i32 @REG_READ(%struct.ath_hw* %75, i32 %76)
  %78 = call i32 @ath_err(%struct.ath_common* %68, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 10, i32 %71, i32 %74, i32 %77)
  store i32 0, i32* %3, align 4
  br label %80

79:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %67
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
