; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ath_common = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_RTS_USE_DEF = common dso_local global i32 0, align 4
@AR_STA_ID1_ACKCTS_6MB = common dso_local global i32 0, align 4
@AR_STA_ID1_SADH_MASK = common dso_local global i32 0, align 4
@AR_DEF_ANTENNA = common dso_local global i32 0, align 4
@AR_ISR = common dso_local global i32 0, align 4
@AR_RSSI_THR = common dso_local global i32 0, align 4
@INIT_RSSI_THR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32)* @ath9k_hw_reset_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_reset_opmode(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %7, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %10)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = load i32, i32* @AR_STA_ID1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AR_STA_ID1_RTS_USE_DEF, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @AR_STA_ID1_ACKCTS_6MB, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %16, %26
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = load i32, i32* @AR_STA_ID1_SADH_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @REG_RMW(%struct.ath_hw* %12, i32 %13, i32 %31, i32 %33)
  %35 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %36 = call i32 @ath_hw_setbssidmask(%struct.ath_common* %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load i32, i32* @AR_DEF_ANTENNA, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @REG_WRITE(%struct.ath_hw* %37, i32 %38, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = call i32 @ath9k_hw_write_associd(%struct.ath_hw* %41)
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = load i32, i32* @AR_ISR, align 4
  %45 = call i32 @REG_WRITE(%struct.ath_hw* %43, i32 %44, i32 -1)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = load i32, i32* @AR_RSSI_THR, align 4
  %48 = load i32, i32* @INIT_RSSI_THR, align 4
  %49 = call i32 @REG_WRITE(%struct.ath_hw* %46, i32 %47, i32 %48)
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ath9k_hw_set_operating_mode(%struct.ath_hw* %52, i32 %55)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath_hw_setbssidmask(%struct.ath_common*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_write_associd(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_operating_mode(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
