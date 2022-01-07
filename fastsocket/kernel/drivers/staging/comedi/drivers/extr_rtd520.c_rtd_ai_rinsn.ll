; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@RTD_ADC_TIMEOUT = common dso_local global i32 0, align 4
@FS_ADC_NOT_EMPTY = common dso_local global i32 0, align 4
@WAIT_QUIETLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"rtd520: Error: ADC never finished! FifoStatus=0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = call i32 @RtdAdcClearFifo(%struct.comedi_device* %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = call i32 @rtd_load_channelgain_list(%struct.comedi_device* %16, i32 1, i32* %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = call i32 @RtdAdcConversionSource(%struct.comedi_device* %20, i32 0)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %82, %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %22
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = call i32 @RtdAdcStart(%struct.comedi_device* %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %45, %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @RTD_ADC_TIMEOUT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = call i32 @RtdFifoStatus(%struct.comedi_device* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @FS_ADC_NOT_EMPTY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %48

43:                                               ; preds = %35
  %44 = load i32, i32* @WAIT_QUIETLY, align 4
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %31

48:                                               ; preds = %42, %31
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @RTD_ADC_TIMEOUT, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = xor i32 %53, 26214
  %55 = call i32 @DPRINTK(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %87

58:                                               ; preds = %48
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = call i32 @RtdAdcFifoGet(%struct.comedi_device* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = ashr i32 %61, 3
  store i32 %62, i32* %13, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @CHAN_ARRAY_TEST(i32 %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 2048
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %81

75:                                               ; preds = %58
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %22

85:                                               ; preds = %22
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %52
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @RtdAdcClearFifo(%struct.comedi_device*) #1

declare dso_local i32 @rtd_load_channelgain_list(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @RtdAdcConversionSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdAdcStart(%struct.comedi_device*) #1

declare dso_local i32 @RtdFifoStatus(%struct.comedi_device*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @RtdAdcFifoGet(%struct.comedi_device*) #1

declare dso_local i64 @CHAN_ARRAY_TEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
