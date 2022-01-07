; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_3780i.c_dsp3780I_WriteMsaCfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_3780i.c_dsp3780I_WriteMsaCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACE_3780I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"3780i::dsp3780i_WriteMsaCfg entry usDspBaseIO %x ulMsaAddr %lx usValue %x\0A\00", align 1
@dsp_lock = common dso_local global i32 0, align 4
@DSP_MsaAddrLow = common dso_local global i32 0, align 4
@DSP_MsaAddrHigh = common dso_local global i32 0, align 4
@DSP_MsaDataDSISHigh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp3780I_WriteMsaCfg(i16 zeroext %0, i64 %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store i16 %0, i16* %4, align 2
  store i64 %1, i64* %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load i32, i32* @TRACE_3780I, align 4
  %9 = load i16, i16* %4, align 2
  %10 = load i64, i64* %5, align 8
  %11 = load i16, i16* %6, align 2
  %12 = call i32 @PRINTK_4(i32 %8, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i16 zeroext %9, i64 %10, i16 zeroext %11)
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @dsp_lock, i64 %13)
  %15 = load i32, i32* @DSP_MsaAddrLow, align 4
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i16
  %18 = call i32 @OutWordDsp(i32 %15, i16 zeroext %17)
  %19 = load i32, i32* @DSP_MsaAddrHigh, align 4
  %20 = load i64, i64* %5, align 8
  %21 = lshr i64 %20, 16
  %22 = trunc i64 %21 to i16
  %23 = call i32 @OutWordDsp(i32 %19, i16 zeroext %22)
  %24 = load i32, i32* @DSP_MsaDataDSISHigh, align 4
  %25 = load i16, i16* %6, align 2
  %26 = call i32 @OutWordDsp(i32 %24, i16 zeroext %25)
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @dsp_lock, i64 %27)
  ret void
}

declare dso_local i32 @PRINTK_4(i32, i8*, i16 zeroext, i64, i16 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OutWordDsp(i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
