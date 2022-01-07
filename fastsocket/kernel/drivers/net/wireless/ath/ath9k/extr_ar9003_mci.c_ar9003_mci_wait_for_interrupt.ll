; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_wait_for_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_wait_for_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_MCI_INTERRUPT_RX_MSG_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MCI Wait for Reg 0x%08x = 0x%08x timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"MCI INT_RAW = 0x%08x, RX_MSG_RAW = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32, i32)* @ar9003_mci_wait_for_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_mci_wait_for_interrupt(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %9, align 8
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @REG_READ(%struct.ath_hw* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = call i32 @udelay(i32 10)
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 10
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %64

29:                                               ; preds = %22
  br label %12

30:                                               ; preds = %15
  %31 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %64

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %46 = call i32 @ar9003_mci_reset_req_wakeup(%struct.ath_hw* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING, align 4
  %50 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %56 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %57 = load i32, i32* @AR_MCI_INTERRUPT_REMOTE_SLEEP_UPDATE, align 4
  %58 = call i32 @REG_WRITE(%struct.ath_hw* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %61 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %62 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG, align 4
  %63 = call i32 @REG_WRITE(%struct.ath_hw* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %38, %28, %12
  %65 = load i32, i32* %8, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %69 = load i32, i32* @MCI, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ath_dbg(%struct.ath_common* %68, i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %74 = load i32, i32* @MCI, align 4
  %75 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %76 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %77 = call i32 @REG_READ(%struct.ath_hw* %75, i32 %76)
  %78 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %79 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %80 = call i32 @REG_READ(%struct.ath_hw* %78, i32 %79)
  %81 = call i32 @ath_dbg(%struct.ath_common* %73, i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %67, %64
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_reset_req_wakeup(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
