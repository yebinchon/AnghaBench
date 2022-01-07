; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_tx_fifo_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_tx_fifo_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, i32, i64* }

@BRCMS_WAKE_OVERRIDE_TXFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32)* @brcms_b_tx_fifo_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_tx_fifo_suspend(%struct.brcms_hardware* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 1, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %23 = load i32, i32* @BRCMS_WAKE_OVERRIDE_TXFIFO, align 4
  %24 = call i32 @brcms_c_ucode_wake_override_set(%struct.brcms_hardware* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %28 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %32 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %25
  %40 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %41 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @BRCMS_PHY_11N_CAP(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %47 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @brcms_c_suspend_mac_and_wait(i32 %48)
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dma_txsuspend(i64 %57)
  %59 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %60 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @BRCMS_PHY_11N_CAP(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %66 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @brcms_c_enable_mac(i32 %67)
  br label %69

69:                                               ; preds = %64, %50
  br label %70

70:                                               ; preds = %15, %69, %25
  ret void
}

declare dso_local i32 @brcms_c_ucode_wake_override_set(%struct.brcms_hardware*, i32) #1

declare dso_local i64 @BRCMS_PHY_11N_CAP(i32) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(i32) #1

declare dso_local i32 @dma_txsuspend(i64) #1

declare dso_local i32 @brcms_c_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
