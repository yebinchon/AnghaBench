; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"spurious interrupt\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DMM32AT_INTCLOCK = common dso_local global i32 0, align 4
@DMM32AT_ADINT = common dso_local global i8 0, align 1
@DMM32AT_AILSB = common dso_local global i32 0, align 4
@DMM32AT_AIMSB = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DMM32AT_CNTRL = common dso_local global i32 0, align 4
@DMM32AT_INTRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dmm32at_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_device*, align 8
  %12 = alloca %struct.comedi_subdevice*, align 8
  %13 = alloca %struct.comedi_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %11, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %22 = call i32 @comedi_error(%struct.comedi_device* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %109

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %26 = load i32, i32* @DMM32AT_INTCLOCK, align 4
  %27 = call i8* @dmm_inb(%struct.comedi_device* %25, i32 %26)
  %28 = ptrtoint i8* %27 to i8
  store i8 %28, i8* %6, align 1
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @DMM32AT_ADINT, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %103

35:                                               ; preds = %24
  %36 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %37, align 8
  store %struct.comedi_subdevice* %38, %struct.comedi_subdevice** %12, align 8
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store %struct.comedi_cmd* %42, %struct.comedi_cmd** %13, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %70, %35
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %51 = load i32, i32* @DMM32AT_AILSB, align 4
  %52 = call i8* @dmm_inb(%struct.comedi_device* %50, i32 %51)
  %53 = ptrtoint i8* %52 to i16
  store i16 %53, i16* %9, align 2
  %54 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %55 = load i32, i32* @DMM32AT_AIMSB, align 4
  %56 = call i8* @dmm_inb(%struct.comedi_device* %54, i32 %55)
  %57 = ptrtoint i8* %56 to i16
  store i16 %57, i16* %8, align 2
  %58 = load i16, i16* %8, align 2
  %59 = zext i16 %58 to i32
  %60 = xor i32 %59, 128
  %61 = shl i32 %60, 8
  %62 = load i16, i16* %9, align 2
  %63 = zext i16 %62 to i32
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @comedi_buf_put(%struct.TYPE_4__* %67, i32 %68)
  br label %70

70:                                               ; preds = %49
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %89 = load i32, i32* @DMM32AT_INTCLOCK, align 4
  %90 = call i32 @dmm_outb(%struct.comedi_device* %88, i32 %89, i32 0)
  %91 = load i32, i32* @COMEDI_CB_EOA, align 4
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %87, %78
  br label %99

99:                                               ; preds = %98, %73
  %100 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %102 = call i32 @comedi_event(%struct.comedi_device* %100, %struct.comedi_subdevice* %101)
  br label %103

103:                                              ; preds = %99, %24
  %104 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %105 = load i32, i32* @DMM32AT_CNTRL, align 4
  %106 = load i32, i32* @DMM32AT_INTRESET, align 4
  %107 = call i32 @dmm_outb(%struct.comedi_device* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %103, %20
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i8* @dmm_inb(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dmm_outb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
