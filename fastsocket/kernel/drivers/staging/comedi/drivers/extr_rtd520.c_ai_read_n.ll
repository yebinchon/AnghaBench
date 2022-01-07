; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_ai_read_n.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_ai_read_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@FS_ADC_NOT_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ai_read_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_read_n(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %64, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = call i32 @RtdAdcFifoGet(%struct.comedi_device* %21)
  store i32 %22, i32* %10, align 4
  br label %64

23:                                               ; preds = %15
  %24 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %25 = call i32 @RtdAdcFifoGet(%struct.comedi_device* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @CHAN_ARRAY_TEST(i32 %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 2048
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %9, align 2
  br label %45

42:                                               ; preds = %23
  %43 = load i32, i32* %10, align 4
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %9, align 2
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i16, i16* %9, align 2
  %50 = call i32 @comedi_buf_put(%struct.TYPE_4__* %48, i16 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %68

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %11

67:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @RtdAdcFifoGet(%struct.comedi_device*) #1

declare dso_local i64 @CHAN_ARRAY_TEST(i32, i32) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
