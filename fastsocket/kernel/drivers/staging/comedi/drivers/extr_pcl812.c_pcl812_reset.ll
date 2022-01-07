; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64 }

@PCL812_MUX = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCL812_GAIN = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@PCL812_DA2_LO = common dso_local global i64 0, align 8
@PCL812_DA2_HI = common dso_local global i64 0, align 8
@PCL812_DA1_LO = common dso_local global i64 0, align 8
@PCL812_DA1_HI = common dso_local global i64 0, align 8
@PCL812_DO_HI = common dso_local global i64 0, align 8
@PCL812_DO_LO = common dso_local global i64 0, align 8
@PCL812_MODE = common dso_local global i64 0, align 8
@PCL812_CLRINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcl812_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl812_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PCL812_MUX, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outb(i32 0, i64 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 0, %11
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCL812_GAIN, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 %12, i64 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 -1, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %83 [
    i32 130, label %26
    i32 131, label %26
    i32 135, label %26
    i32 133, label %26
    i32 136, label %39
    i32 128, label %81
    i32 129, label %81
    i32 132, label %81
    i32 134, label %81
  ]

26:                                               ; preds = %1, %1, %1, %1
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCL812_DA2_LO, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 0, i64 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCL812_DA2_HI, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 0, i64 %37)
  br label %39

39:                                               ; preds = %1, %26
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCL812_DA1_LO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 0, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCL812_DA1_HI, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %53 = call i32 @start_pacer(%struct.comedi_device* %52, i32 -1, i32 0, i32 0)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCL812_DO_HI, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 0, i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCL812_DO_LO, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 0, i64 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCL812_MODE, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 %68, i64 %73)
  %75 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCL812_CLRINT, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 0, i64 %79)
  br label %83

81:                                               ; preds = %1, %1, %1, %1
  %82 = call i32 @udelay(i32 5)
  br label %83

83:                                               ; preds = %1, %81, %39
  %84 = call i32 @udelay(i32 5)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
