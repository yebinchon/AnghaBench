; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_last_sample_611x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_get_last_sample_611x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@NI_AI_SUBDEV = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ni_reg_611x = common dso_local global i64 0, align 8
@XXX_Status = common dso_local global i32 0, align 4
@ADC_FIFO_Data_611x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @get_last_sample_611x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_last_sample_611x(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %9 = load i32, i32* @NI_AI_SUBDEV, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i64 %10
  store %struct.comedi_subdevice* %11, %struct.comedi_subdevice** %3, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boardtype, i32 0, i32 0), align 8
  %13 = load i64, i64* @ni_reg_611x, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %30

16:                                               ; preds = %1
  %17 = load i32, i32* @XXX_Status, align 4
  %18 = call i32 @ni_readb(i32 %17)
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* @ADC_FIFO_Data_611x, align 4
  %23 = call i32 @ni_readl(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 65535
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %4, align 2
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %28 = load i16, i16* %4, align 2
  %29 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %27, i16 signext %28)
  br label %30

30:                                               ; preds = %15, %21, %16
  ret void
}

declare dso_local i32 @ni_readb(i32) #1

declare dso_local i32 @ni_readl(i32) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
