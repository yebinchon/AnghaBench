; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd520_probe_fifo_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd520_probe_fifo_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@AREF_GROUND = common dso_local global i32 0, align 4
@rtd520_probe_fifo_depth.limit = internal constant i32 8192, align 4
@FS_ADC_HEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\0Acomedi: %s: failed to probe fifo size.\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"\0Acomedi: %s: unexpected fifo size of %i, expected 1024 or 8192.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @rtd520_probe_fifo_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd520_probe_fifo_depth(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load i32, i32* @AREF_GROUND, align 4
  %9 = call i32 @CR_PACK(i32 0, i32 0, i32 %8)
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = call i32 @RtdAdcClearFifo(%struct.comedi_device* %10)
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = call i32 @rtd_load_channelgain_list(%struct.comedi_device* %12, i32 1, i32* %4)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = call i32 @RtdAdcConversionSource(%struct.comedi_device* %14, i32 0)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 8192
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = call i32 @RtdAdcStart(%struct.comedi_device* %20)
  %22 = call i32 @udelay(i32 1)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = call i32 @RtdFifoStatus(%struct.comedi_device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FS_ADC_HEMPTY, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = mul i32 2, %30
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %29, %16
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 8192
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @DRV_NAME, align 4
  %41 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %36
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = call i32 @RtdAdcClearFifo(%struct.comedi_device* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 1024
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 8192
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @DRV_NAME, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %49, %44
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %52, %39
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @CR_PACK(i32, i32, i32) #1

declare dso_local i32 @RtdAdcClearFifo(%struct.comedi_device*) #1

declare dso_local i32 @rtd_load_channelgain_list(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @RtdAdcConversionSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdAdcStart(%struct.comedi_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RtdFifoStatus(%struct.comedi_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
