; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_trimpot_8402_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_trimpot_8402_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }

@trimpot_8402_write.bitstream_length = internal constant i32 10, align 4
@trimpot_8402_write.ad8402_udelay = internal constant i32 1, align 4
@SELECT_TRIMPOT_BIT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CALIBRATION_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @trimpot_8402_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trimpot_8402_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 3
  %11 = shl i32 %10, 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  %14 = or i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = call i32 @cal_enable_bits(%struct.comedi_device* %15)
  %17 = load i32, i32* @SELECT_TRIMPOT_BIT, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = call i32 @udelay(i32 1)
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CALIBRATION_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i32 %20, i64 %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @write_calibration_bitstream(%struct.comedi_device* %27, i32 %28, i32 %29, i32 10)
  %31 = call i32 @udelay(i32 1)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = call i32 @cal_enable_bits(%struct.comedi_device* %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CALIBRATION_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outw(i32 %33, i64 %38)
  ret i32 0
}

declare dso_local i32 @cal_enable_bits(%struct.comedi_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @write_calibration_bitstream(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
