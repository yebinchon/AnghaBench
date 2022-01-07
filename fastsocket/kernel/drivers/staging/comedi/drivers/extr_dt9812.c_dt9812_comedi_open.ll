; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_comedi_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_comedi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32* }

@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@dt9812_10_ain_range = common dso_local global i32 0, align 4
@dt9812_2pt5_ain_range = common dso_local global i32 0, align 4
@dt9812_10_aout_range = common dso_local global i32 0, align 4
@dt9812_2pt5_aout_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @dt9812_comedi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt9812_comedi_open(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @down(i32* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %1
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i64 0
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %3, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  store i32 8, i32* %21, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %25, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i64 1
  store %struct.comedi_subdevice* %27, %struct.comedi_subdevice** %3, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  store i32 8, i32* %29, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %33, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i64 2
  store %struct.comedi_subdevice* %35, %struct.comedi_subdevice** %3, align 8
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  store i32 8, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %55 [
    i32 0, label %45
    i32 1, label %50
  ]

45:                                               ; preds = %15
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 1
  store i32 4095, i32* %47, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 2
  store i32* @dt9812_10_ain_range, i32** %49, align 8
  br label %55

50:                                               ; preds = %15
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 1
  store i32 4095, i32* %52, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 2
  store i32* @dt9812_2pt5_ain_range, i32** %54, align 8
  br label %55

55:                                               ; preds = %15, %50, %45
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %57, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i64 3
  store %struct.comedi_subdevice* %59, %struct.comedi_subdevice** %3, align 8
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  store i32 2, i32* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %79 [
    i32 0, label %69
    i32 1, label %74
  ]

69:                                               ; preds = %55
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 1
  store i32 4095, i32* %71, align 4
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 2
  store i32* @dt9812_10_aout_range, i32** %73, align 8
  br label %79

74:                                               ; preds = %55
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 1
  store i32 4095, i32* %76, align 4
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 2
  store i32* @dt9812_2pt5_aout_range, i32** %78, align 8
  br label %79

79:                                               ; preds = %55, %74, %69
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @up(i32* %84)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
