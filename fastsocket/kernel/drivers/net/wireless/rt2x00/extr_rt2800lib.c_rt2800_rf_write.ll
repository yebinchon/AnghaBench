; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_rf_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_rf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RF_CSR_CFG0_REG_VALUE_BW = common dso_local global i32 0, align 4
@RF_CSR_CFG0_STANDBYMODE = common dso_local global i32 0, align 4
@RF_CSR_CFG0_SEL = common dso_local global i32 0, align 4
@RF_CSR_CFG0_BUSY = common dso_local global i32 0, align 4
@RF_CSR_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32, i32)* @rt2800_rf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_rf_write(%struct.rt2x00_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %12 = call i64 @WAIT_FOR_RF(%struct.rt2x00_dev* %11, i32* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @RF_CSR_CFG0_REG_VALUE_BW, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rt2x00_set_field32(i32* %7, i32 %15, i32 %16)
  %18 = load i32, i32* @RF_CSR_CFG0_STANDBYMODE, align 4
  %19 = call i32 @rt2x00_set_field32(i32* %7, i32 %18, i32 0)
  %20 = load i32, i32* @RF_CSR_CFG0_SEL, align 4
  %21 = call i32 @rt2x00_set_field32(i32* %7, i32 %20, i32 0)
  %22 = load i32, i32* @RF_CSR_CFG0_BUSY, align 4
  %23 = call i32 @rt2x00_set_field32(i32* %7, i32 %22, i32 1)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %25 = load i32, i32* @RF_CSR_CFG0, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @rt2800_register_write_lock(%struct.rt2x00_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rt2x00_rf_write(%struct.rt2x00_dev* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %14, %3
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WAIT_FOR_RF(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write_lock(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_rf_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
