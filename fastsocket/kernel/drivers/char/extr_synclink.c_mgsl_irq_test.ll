; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_irq_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_irq_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32 }

@PCR = common dso_local global i32 0, align 4
@BIT13 = common dso_local global i32 0, align 4
@BIT12 = common dso_local global i32 0, align 4
@IO_PIN = common dso_local global i32 0, align 4
@MISCSTATUS_TXC_LATCHED = common dso_local global i32 0, align 4
@SICR_TXC_ACTIVE = common dso_local global i64 0, align 8
@SICR_TXC_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgsl_struct*)* @mgsl_irq_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgsl_irq_test(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %5 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %10 = call i32 @usc_reset(%struct.mgsl_struct* %9)
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = load i32, i32* @PCR, align 4
  %15 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %16 = load i32, i32* @PCR, align 4
  %17 = call i32 @usc_InReg(%struct.mgsl_struct* %15, i32 %16)
  %18 = load i32, i32* @BIT13, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BIT12, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = trunc i32 %22 to i16
  %24 = call i32 @usc_OutReg(%struct.mgsl_struct* %13, i32 %14, i16 zeroext %23)
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = call i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct* %25)
  %27 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %28 = load i32, i32* @IO_PIN, align 4
  %29 = call i32 @usc_EnableInterrupts(%struct.mgsl_struct* %27, i32 %28)
  %30 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %31 = load i32, i32* @IO_PIN, align 4
  %32 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %30, i32 %31)
  %33 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %34 = load i32, i32* @MISCSTATUS_TXC_LATCHED, align 4
  %35 = call i32 @usc_UnlatchIostatusBits(%struct.mgsl_struct* %33, i32 %34)
  %36 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %37 = load i64, i64* @SICR_TXC_ACTIVE, align 8
  %38 = load i64, i64* @SICR_TXC_INACTIVE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @usc_EnableStatusIrqs(%struct.mgsl_struct* %36, i64 %39)
  %41 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %42 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i64 100, i64* %3, align 8
  br label %45

45:                                               ; preds = %57, %1
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %3, align 8
  %48 = icmp ne i64 %46, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %51 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i1 [ false, %45 ], [ %54, %49 ]
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 @msleep_interruptible(i32 10)
  br label %45

59:                                               ; preds = %55
  %60 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %61 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %60, i32 0, i32 1
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %65 = call i32 @usc_reset(%struct.mgsl_struct* %64)
  %66 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %67 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %66, i32 0, i32 1
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %71 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usc_reset(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i16 zeroext) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_EnableInterrupts(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_UnlatchIostatusBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_EnableStatusIrqs(%struct.mgsl_struct*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
