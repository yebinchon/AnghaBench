; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, %struct.comedi_subdevice*, i32, i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"pcl818_ai_cancel()\0A\00", align 1
@PCL818_CONTROL = common dso_local global i64 0, align 8
@PCL818_AD_LO = common dso_local global i64 0, align 8
@PCL818_AD_HI = common dso_local global i64 0, align 8
@PCL818_CLRINT = common dso_local global i64 0, align 8
@PCL818_FI_INTCLR = common dso_local global i64 0, align 8
@PCL818_FI_FLUSH = common dso_local global i64 0, align 8
@PCL818_FI_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"pcl818_ai_cancel() end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl818_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl818_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %120

9:                                                ; preds = %2
  %10 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 1, i32* %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %119 [
    i32 137, label %16
    i32 133, label %16
    i32 134, label %37
    i32 130, label %37
    i32 135, label %37
    i32 131, label %37
  ]

16:                                               ; preds = %9, %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %16
  br label %121

32:                                               ; preds = %26, %21
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @disable_dma(i32 %35)
  br label %37

37:                                               ; preds = %9, %9, %9, %9, %32
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCL818_CONTROL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb(i64 %42)
  %44 = and i32 %43, 115
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCL818_CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  %51 = call i32 @udelay(i32 1)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = call i32 @start_pacer(%struct.comedi_device* %52, i32 -1, i32 0, i32 0)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCL818_AD_LO, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 0, i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCL818_AD_LO, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @inb(i64 %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCL818_AD_HI, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inb(i64 %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCL818_CLRINT, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb(i32 0, i64 %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCL818_CONTROL, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 0, i64 %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %37
  %89 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCL818_FI_INTCLR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb(i32 0, i64 %93)
  %95 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCL818_FI_FLUSH, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 0, i64 %99)
  %101 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCL818_FI_ENABLE, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outb(i32 0, i64 %105)
  br label %107

107:                                              ; preds = %88, %37
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  store %struct.comedi_subdevice* %110, %struct.comedi_subdevice** %112, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i32 0, i32* %114, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 0, i32* %116, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %9, %107
  br label %120

120:                                              ; preds = %119, %2
  br label %121

121:                                              ; preds = %120, %31
  %122 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
