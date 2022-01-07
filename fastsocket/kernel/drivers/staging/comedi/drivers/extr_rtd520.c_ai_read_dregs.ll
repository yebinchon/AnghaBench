; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_ai_read_dregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_ai_read_dregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FS_ADC_NOT_EMPTY = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ai_read_dregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_read_dregs(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  br label %8

8:                                                ; preds = %60, %21, %2
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = call i32 @RtdFifoStatus(%struct.comedi_device* %9)
  %11 = load i32, i32* @FS_ADC_NOT_EMPTY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = call i32 @RtdAdcFifoGet(%struct.comedi_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %8

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 3
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @CHAN_ARRAY_TEST(i32 %27, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 2048
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  br label %42

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %6, align 2
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i16, i16* %6, align 2
  %47 = call i32 @comedi_buf_put(%struct.TYPE_4__* %45, i16 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %62

50:                                               ; preds = %42
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %8

61:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @RtdFifoStatus(%struct.comedi_device*) #1

declare dso_local i32 @RtdAdcFifoGet(%struct.comedi_device*) #1

declare dso_local i64 @CHAN_ARRAY_TEST(i32, i32) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
