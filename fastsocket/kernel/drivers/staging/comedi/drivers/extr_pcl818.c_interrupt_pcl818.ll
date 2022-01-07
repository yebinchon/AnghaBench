; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32, i64, i64 }
%struct.comedi_device = type { i32, i64, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"premature interrupt\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCL818_CLRINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"bad IRQ!\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"IRQ from unknow source!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcl818 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcl818(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.comedi_device*
  store %struct.comedi_device* %9, %struct.comedi_device** %6, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = call i32 @comedi_error(%struct.comedi_device* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %17, i32* %3, align 4
  br label %124

18:                                               ; preds = %2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %38, %28
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 135
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 132
  br i1 %52, label %53, label %65

53:                                               ; preds = %48, %43
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 2
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %55, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i64 0
  store %struct.comedi_subdevice* %57, %struct.comedi_subdevice** %7, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %64 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %62, %struct.comedi_subdevice* %63)
  br label %65

65:                                               ; preds = %53, %48, %38, %33
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCL818_CLRINT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outb(i32 0, i64 %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %124

73:                                               ; preds = %23, %18
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %89 [
    i32 135, label %77
    i32 132, label %77
    i32 133, label %81
    i32 130, label %81
    i32 134, label %85
    i32 131, label %85
  ]

77:                                               ; preds = %73, %73
  %78 = load i32, i32* %4, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @interrupt_pcl818_ai_mode13_dma(i32 %78, i8* %79)
  store i32 %80, i32* %3, align 4
  br label %124

81:                                               ; preds = %73, %73
  %82 = load i32, i32* %4, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @interrupt_pcl818_ai_mode13_int(i32 %82, i8* %83)
  store i32 %84, i32* %3, align 4
  br label %124

85:                                               ; preds = %73, %73
  %86 = load i32, i32* %4, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @interrupt_pcl818_ai_mode13_fifo(i32 %86, i8* %87)
  store i32 %88, i32* %3, align 4
  br label %124

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PCL818_CLRINT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i32 0, i64 %95)
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %90
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111, %106, %101, %90
  %117 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %118 = call i32 @comedi_error(%struct.comedi_device* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @IRQ_NONE, align 4
  store i32 %119, i32* %3, align 4
  br label %124

120:                                              ; preds = %111
  %121 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %122 = call i32 @comedi_error(%struct.comedi_device* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @IRQ_NONE, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %116, %85, %81, %77, %65, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pcl818_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @interrupt_pcl818_ai_mode13_dma(i32, i8*) #1

declare dso_local i32 @interrupt_pcl818_ai_mode13_int(i32, i8*) #1

declare dso_local i32 @interrupt_pcl818_ai_mode13_fifo(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
