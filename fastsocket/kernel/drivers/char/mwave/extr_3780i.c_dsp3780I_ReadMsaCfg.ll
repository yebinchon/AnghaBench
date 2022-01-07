; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_3780i.c_dsp3780I_ReadMsaCfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/mwave/extr_3780i.c_dsp3780I_ReadMsaCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACE_3780I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"3780i::dsp3780I_ReadMsaCfg entry usDspBaseIO %x ulMsaAddr %lx\0A\00", align 1
@dsp_lock = common dso_local global i32 0, align 4
@DSP_MsaAddrLow = common dso_local global i32 0, align 4
@DSP_MsaAddrHigh = common dso_local global i32 0, align 4
@DSP_MsaDataDSISHigh = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"3780i::dsp3780I_ReadMsaCfg exit val %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @dsp3780I_ReadMsaCfg(i16 zeroext %0, i64 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @TRACE_3780I, align 4
  %8 = load i16, i16* %3, align 2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @PRINTK_3(i32 %7, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i16 zeroext %8, i64 %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @dsp_lock, i64 %11)
  %13 = load i32, i32* @DSP_MsaAddrLow, align 4
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i16
  %16 = call i32 @OutWordDsp(i32 %13, i16 zeroext %15)
  %17 = load i32, i32* @DSP_MsaAddrHigh, align 4
  %18 = load i64, i64* %4, align 8
  %19 = lshr i64 %18, 16
  %20 = trunc i64 %19 to i16
  %21 = call i32 @OutWordDsp(i32 %17, i16 zeroext %20)
  %22 = load i32, i32* @DSP_MsaDataDSISHigh, align 4
  %23 = call zeroext i16 @InWordDsp(i32 %22)
  store i16 %23, i16* %6, align 2
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @dsp_lock, i64 %24)
  %26 = load i32, i32* @TRACE_3780I, align 4
  %27 = load i16, i16* %6, align 2
  %28 = call i32 @PRINTK_2(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %27)
  %29 = load i16, i16* %6, align 2
  ret i16 %29
}

declare dso_local i32 @PRINTK_3(i32, i8*, i16 zeroext, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OutWordDsp(i32, i16 zeroext) #1

declare dso_local zeroext i16 @InWordDsp(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @PRINTK_2(i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
