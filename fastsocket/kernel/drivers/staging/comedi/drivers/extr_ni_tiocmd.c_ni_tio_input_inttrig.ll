; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_inttrig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.ni_gpct* }
%struct.TYPE_2__ = type { i32* }
%struct.ni_gpct = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NI_GPCT_ARM_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_tio_input_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_input_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ni_gpct*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 1
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %12, align 8
  store %struct.ni_gpct* %13, %struct.ni_gpct** %10, align 8
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %15 = icmp eq %struct.ni_gpct* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %25 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %29 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %34 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mite_dma_arm(i64 %35)
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %42 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %40
  %50 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %51 = load i32, i32* @NI_GPCT_ARM_IMMEDIATE, align 4
  %52 = call i32 @ni_tio_arm(%struct.ni_gpct* %50, i32 1, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %47, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_dma_arm(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
