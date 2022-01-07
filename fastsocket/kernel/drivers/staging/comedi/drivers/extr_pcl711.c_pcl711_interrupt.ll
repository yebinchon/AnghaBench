; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl711.c_pcl711_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl711.c_pcl711_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"spurious interrupt\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCL711_AD_HI = common dso_local global i64 0, align 8
@PCL711_AD_LO = common dso_local global i64 0, align 8
@PCL711_CLRINTR = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@this_board = common dso_local global %struct.TYPE_5__* null, align 8
@PCL711_MODE = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcl711_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl711_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i64 0
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %10, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %23 = call i32 @comedi_error(%struct.comedi_device* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCL711_AD_HI, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inb(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCL711_AD_LO, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inb(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCL711_CLRINTR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 0, i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %25
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCL711_MODE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outb(i32 1, i64 %63)
  br label %72

65:                                               ; preds = %53
  %66 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCL711_MODE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outb(i32 0, i64 %70)
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* @COMEDI_CB_EOA, align 4
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %72, %25
  %81 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %83 = call i32 @comedi_event(%struct.comedi_device* %81, %struct.comedi_subdevice* %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
