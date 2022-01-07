; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i64)*, i64 }
%struct.comedi_device = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@STATUS1_REG = common dso_local global i64 0, align 8
@DATA_AVAIL_BIT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@ADC_FIFO_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"ai timeout, fifo never empties\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @labpc_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_drain_fifo(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.comedi_async*, %struct.comedi_async** %13, align 8
  store %struct.comedi_async* %14, %struct.comedi_async** %7, align 8
  store i32 10000, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32 (i64)*, i32 (i64)** %16, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STATUS1_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 %17(i64 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %96, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DATA_AVAIL_BIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %34, 10000
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i1 [ false, %26 ], [ %35, %33 ]
  br i1 %37, label %38, label %99

38:                                               ; preds = %36
  %39 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRIG_COUNT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %99

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %38
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32 (i64)*, i32 (i64)** %58, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ADC_FIFO_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 %59(i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32 (i64)*, i32 (i64)** %67, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ADC_FIFO_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 %68(i64 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %76, %77
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %6, align 2
  %80 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i16, i16* %6, align 2
  %84 = call i32 @cfc_write_to_buffer(%struct.TYPE_6__* %82, i16 signext %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32 (i64)*, i32 (i64)** %86, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @STATUS1_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 %87(i64 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %56
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %26

99:                                               ; preds = %50, %36
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 10000
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = call i32 @comedi_error(%struct.comedi_device* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %106 = load i32, i32* @COMEDI_CB_EOA, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  store i32 -1, i32* %2, align 4
  br label %113

112:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @cfc_write_to_buffer(%struct.TYPE_6__*, i16 signext) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
