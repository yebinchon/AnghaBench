; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_cs5529_do_conversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_cs5529_do_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@CSCMD_COMMAND = common dso_local global i32 0, align 4
@CSCMD_SINGLE_CONVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"timeout or signal in cs5529_do_conversion()\00", align 1
@ETIME = common dso_local global i32 0, align 4
@CAL_ADC_Status_67xx = common dso_local global i32 0, align 4
@CSS_OSC_DETECT = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [63 x i8] c"ni_mio_common: cs5529 conversion error, status CSS_OSC_DETECT\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CSS_OVERRANGE = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [62 x i8] c"ni_mio_common: cs5529 conversion error, overrange (ignoring)\0A\00", align 1
@CAL_ADC_Data_67xx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i16*)* @cs5529_do_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5529_do_conversion(%struct.comedi_device* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16* %1, i16** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = load i32, i32* @CSCMD_COMMAND, align 4
  %10 = load i32, i32* @CSCMD_SINGLE_CONVERSION, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @cs5529_command(%struct.comedi_device* %8, i32 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = call i32 @cs5529_wait_for_idle(%struct.comedi_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = call i32 @comedi_error(%struct.comedi_device* %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ETIME, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = load i32, i32* @CAL_ADC_Status_67xx, align 4
  %25 = call zeroext i16 @ni_ao_win_inw(%struct.comedi_device* %23, i32 %24)
  store i16 %25, i16* %7, align 2
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @CSS_OSC_DETECT, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = call i32 @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %22
  %37 = load i16, i16* %7, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @CSS_OVERRANGE, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i16*, i16** %5, align 8
  %47 = icmp ne i16* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = load i32, i32* @CAL_ADC_Data_67xx, align 4
  %51 = call zeroext i16 @ni_ao_win_inw(%struct.comedi_device* %49, i32 %50)
  %52 = load i16*, i16** %5, align 8
  store i16 %51, i16* %52, align 2
  %53 = load i16*, i16** %5, align 8
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = xor i32 %55, 32768
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %53, align 2
  br label %58

58:                                               ; preds = %48, %45
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %32, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @cs5529_command(%struct.comedi_device*, i32) #1

declare dso_local i32 @cs5529_wait_for_idle(%struct.comedi_device*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local zeroext i16 @ni_ao_win_inw(%struct.comedi_device*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
