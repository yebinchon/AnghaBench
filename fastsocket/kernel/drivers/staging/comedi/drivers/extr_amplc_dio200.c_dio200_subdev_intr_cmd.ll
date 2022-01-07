; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_subdev_intr_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_subdev_intr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.dio200_subdev_intr* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32 }
%struct.dio200_subdev_intr = type { i32, i32, i32, i32 }

@dio200_inttrig_start_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_subdev_intr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_intr_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca %struct.dio200_subdev_intr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.comedi_cmd* %12, %struct.comedi_cmd** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 1
  %15 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %14, align 8
  store %struct.dio200_subdev_intr* %15, %struct.dio200_subdev_intr** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %17 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %16, i32 0, i32 2
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %21 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %33 [
    i32 129, label %25
  ]

25:                                               ; preds = %2
  %26 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %27 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %32 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %35 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %37 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %48 [
    i32 128, label %42
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @dio200_inttrig_start_intr, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %51 = call i32 @dio200_start_intr(%struct.comedi_device* %49, %struct.comedi_subdevice* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %54 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %53, i32 0, i32 2
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %62 = call i32 @comedi_event(%struct.comedi_device* %60, %struct.comedi_subdevice* %61)
  br label %63

63:                                               ; preds = %59, %52
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dio200_start_intr(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
