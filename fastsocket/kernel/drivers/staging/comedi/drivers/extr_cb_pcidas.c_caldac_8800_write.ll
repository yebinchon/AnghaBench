; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_caldac_8800_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_caldac_8800_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }

@caldac_8800_write.num_caldac_channels = internal constant i32 8, align 4
@caldac_8800_write.bitstream_length = internal constant i32 11, align 4
@caldac_8800_write.caldac_8800_udelay = internal constant i32 1, align 4
@.str = private unnamed_addr constant [23 x i8] c"illegal caldac channel\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@SELECT_8800_BIT = common dso_local global i32 0, align 4
@CALIBRATION_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @caldac_8800_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caldac_8800_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 7
  %11 = shl i32 %10, 8
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp uge i32 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = call i32 @comedi_error(%struct.comedi_device* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %63

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = call i32 @cal_enable_bits(%struct.comedi_device* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @write_calibration_bitstream(%struct.comedi_device* %38, i32 %40, i32 %41, i32 11)
  %43 = call i32 @udelay(i32 1)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = call i32 @cal_enable_bits(%struct.comedi_device* %44)
  %46 = load i32, i32* @SELECT_8800_BIT, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CALIBRATION_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outw(i32 %47, i64 %52)
  %54 = call i32 @udelay(i32 1)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = call i32 @cal_enable_bits(%struct.comedi_device* %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CALIBRATION_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %30, %29, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @write_calibration_bitstream(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @cal_enable_bits(%struct.comedi_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
