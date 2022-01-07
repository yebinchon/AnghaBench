; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"spurious interrupt\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DT2821_ADCSR = common dso_local global i64 0, align 8
@DT2821_DACSR = common dso_local global i64 0, align 8
@DT2821_SUPCSR = common dso_local global i64 0, align 8
@DT2821_DMAD = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DMA_MODE_READ = common dso_local global i64 0, align 8
@DT2821_ADERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"A/D error\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@DT2821_DAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"D/A error\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@DT2821_ADDAT = common dso_local global i64 0, align 8
@DT2821_ADDONE = common dso_local global i32 0, align 4
@DT2821_SCDN = common dso_local global i32 0, align 4
@DT2821_STRIG = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dt282x_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.comedi_device*
  store %struct.comedi_device* %14, %struct.comedi_device** %6, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = call i32 @comedi_error(%struct.comedi_device* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %22, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 2
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %25, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i64 0
  store %struct.comedi_subdevice* %27, %struct.comedi_subdevice** %7, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 2
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %29, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i64 1
  store %struct.comedi_subdevice* %31, %struct.comedi_subdevice** %8, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DT2821_ADCSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inw(i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DT2821_DACSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inw(i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT2821_SUPCSR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @inw(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @DT2821_DMAD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %23
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DMA_MODE_READ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = call i32 @dt282x_ai_dma_interrupt(%struct.comedi_device* %61)
  br label %66

63:                                               ; preds = %54
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = call i32 @dt282x_ao_dma_interrupt(%struct.comedi_device* %64)
  br label %66

66:                                               ; preds = %63, %60
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @DT2821_ADERR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = call i32 @comedi_error(%struct.comedi_device* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %82 = call i32 @dt282x_ai_cancel(%struct.comedi_device* %80, %struct.comedi_subdevice* %81)
  %83 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %77, %72
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @DT2821_DAERR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = call i32 @comedi_error(%struct.comedi_device* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %101 = call i32 @dt282x_ao_cancel(%struct.comedi_device* %99, %struct.comedi_subdevice* %100)
  %102 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %96, %91
  %110 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %112 = call i32 @comedi_event(%struct.comedi_device* %110, %struct.comedi_subdevice* %111)
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @IRQ_RETVAL(i32 %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @dt282x_ai_dma_interrupt(%struct.comedi_device*) #1

declare dso_local i32 @dt282x_ao_dma_interrupt(%struct.comedi_device*) #1

declare dso_local i32 @dt282x_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @dt282x_ao_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
