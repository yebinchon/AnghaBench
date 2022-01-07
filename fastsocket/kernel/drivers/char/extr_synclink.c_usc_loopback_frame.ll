; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_loopback_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_loopback_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@TC0R = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@RTCmd_PurgeRxFifo = common dso_local global i32 0, align 4
@ENABLE_UNCONDITIONAL = common dso_local global i32 0, align 4
@TCLR = common dso_local global i32 0, align 4
@RTCmd_PurgeTxFifo = common dso_local global i32 0, align 4
@TXSTATUS_ALL = common dso_local global i32 0, align 4
@DATAREG = common dso_local global i64 0, align 8
@TCmd_SendFrame = common dso_local global i32 0, align 4
@RCSR = common dso_local global i32 0, align 4
@BIT8 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_loopback_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_loopback_frame(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %5 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %10 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = call i32 @usc_DisableMasterIrqBit(%struct.mgsl_struct* %13)
  %15 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %16 = call i32 @usc_set_sdlc_mode(%struct.mgsl_struct* %15)
  %17 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %18 = call i32 @usc_enable_loopback(%struct.mgsl_struct* %17, i32 1)
  %19 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %20 = load i32, i32* @TC0R, align 4
  %21 = call i32 @usc_OutReg(%struct.mgsl_struct* %19, i32 %20, i32 0)
  %22 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %23 = load i32, i32* @CCR, align 4
  %24 = call i32 @usc_OutReg(%struct.mgsl_struct* %22, i32 %23, i32 256)
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = load i32, i32* @RTCmd_PurgeRxFifo, align 4
  %27 = call i32 @usc_RTCmd(%struct.mgsl_struct* %25, i32 %26)
  %28 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %29 = load i32, i32* @ENABLE_UNCONDITIONAL, align 4
  %30 = call i32 @usc_EnableReceiver(%struct.mgsl_struct* %28, i32 %29)
  %31 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %32 = load i32, i32* @TCLR, align 4
  %33 = call i32 @usc_OutReg(%struct.mgsl_struct* %31, i32 %32, i32 2)
  %34 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %35 = load i32, i32* @RTCmd_PurgeTxFifo, align 4
  %36 = call i32 @usc_RTCmd(%struct.mgsl_struct* %34, i32 %35)
  %37 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %38 = load i32, i32* @TXSTATUS_ALL, align 4
  %39 = call i32 @usc_UnlatchTxstatusBits(%struct.mgsl_struct* %37, i32 %38)
  %40 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %41 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DATAREG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 0, i64 %44)
  %46 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %47 = load i32, i32* @TCmd_SendFrame, align 4
  %48 = call i32 @usc_TCmd(%struct.mgsl_struct* %46, i32 %47)
  %49 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %50 = load i32, i32* @ENABLE_UNCONDITIONAL, align 4
  %51 = call i32 @usc_EnableTransmitter(%struct.mgsl_struct* %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %70, %1
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 1000
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %57 = load i32, i32* @RCSR, align 4
  %58 = call i32 @usc_InReg(%struct.mgsl_struct* %56, i32 %57)
  %59 = load i32, i32* @BIT8, align 4
  %60 = load i32, i32* @BIT4, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @BIT3, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @BIT1, align 4
  %65 = add nsw i32 %63, %64
  %66 = and i32 %58, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %73

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %52

73:                                               ; preds = %68, %52
  %74 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %75 = call i32 @usc_enable_loopback(%struct.mgsl_struct* %74, i32 0)
  %76 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %77 = call i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct* %76)
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %80 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  ret void
}

declare dso_local i32 @usc_DisableMasterIrqBit(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_set_sdlc_mode(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_enable_loopback(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_RTCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_EnableReceiver(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_UnlatchTxstatusBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @usc_TCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_EnableTransmitter(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
