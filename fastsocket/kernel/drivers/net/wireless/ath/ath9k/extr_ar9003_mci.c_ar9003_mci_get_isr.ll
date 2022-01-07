; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32, i8* }
%struct.ath_common = type { i32 }

@AR_MCI_INTERRUPT_RX_MSG_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RAW = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MCI gets 0xdeadbeef during int processing\0A\00", align 1
@ATH9K_INT_MCI = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_INFO = common dso_local global i32 0, align 4
@AR_MCI_CONT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_get_isr(%struct.ath_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_hw_mci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ath9k_hw_mci* %13, %struct.ath9k_hw_mci** %6, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %16 = call i8* @REG_READ(%struct.ath_hw* %14, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %20 = call i8* @REG_READ(%struct.ath_hw* %18, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -559038737
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -559038737
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %2
  %28 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %29 = load i32, i32* @MCI, align 4
  %30 = call i32 @ath_dbg(%struct.ath_common* %28, i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %65

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %34 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %39 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ATH9K_INT_MCI, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_INFO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %31
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_MCI_CONT_STATUS, align 4
  %53 = call i8* @REG_READ(%struct.ath_hw* %51, i32 %52)
  %54 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %55 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %50, %31
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = load i32, i32* @AR_MCI_INTERRUPT_RAW, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @REG_WRITE(%struct.ath_hw* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %27
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i8* @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
