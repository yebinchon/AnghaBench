; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_start_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_start_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.dio200_subdev_intr* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32* }
%struct.dio200_subdev_intr = type { i64, i32, i32, i32, i64, i64, i32 }

@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_start_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_start_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dio200_subdev_intr*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 1
  %12 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %11, align 8
  store %struct.dio200_subdev_intr* %12, %struct.dio200_subdev_intr** %7, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  %18 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  %23 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* @COMEDI_CB_EOA, align 4
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 8
  %34 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  %35 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  store i32 1, i32* %9, align 4
  br label %84

36:                                               ; preds = %21, %2
  store i32 0, i32* %6, align 4
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CR_CHAN(i32 %55)
  %57 = shl i32 1, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %42

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %36
  %65 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  %66 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  %72 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  %74 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  %80 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @outb(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %64
  br label %84

84:                                               ; preds = %83, %26
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
