; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_8255.c_subdev_8255_init_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_8255.c_subdev_8255_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32 }

@subdev_8255_cmdtest = common dso_local global i32 0, align 4
@subdev_8255_cmd = common dso_local global i32 0, align 4
@subdev_8255_cancel = common dso_local global i32 0, align 4
@subdevpriv = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subdev_8255_init_irq(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 (i32, i32, i32, i64)* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32 (i32, i32, i32, i64)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32 (i32, i32, i32, i64)* %2, i32 (i32, i32, i32, i64)** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %13 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @subdev_8255_init(%struct.comedi_device* %11, %struct.comedi_subdevice* %12, i32 (i32, i32, i32, i64)* %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %32

20:                                               ; preds = %4
  %21 = load i32, i32* @subdev_8255_cmdtest, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @subdev_8255_cmd, align 4
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @subdev_8255_cancel, align 4
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @subdevpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %20, %18
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32 (i32, i32, i32, i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
