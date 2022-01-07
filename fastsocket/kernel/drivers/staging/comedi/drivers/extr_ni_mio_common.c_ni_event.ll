; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_event(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %6 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %11 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @COMEDI_CB_EOA, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %20, align 8
  %22 = ptrtoint %struct.comedi_subdevice* %18 to i64
  %23 = ptrtoint %struct.comedi_subdevice* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  switch i64 %25, label %42 [
    i64 132, label %26
    i64 131, label %30
    i64 129, label %34
    i64 128, label %34
    i64 130, label %38
  ]

26:                                               ; preds = %17
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %29 = call i32 @ni_ai_reset(%struct.comedi_device* %27, %struct.comedi_subdevice* %28)
  br label %43

30:                                               ; preds = %17
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %33 = call i32 @ni_ao_reset(%struct.comedi_device* %31, %struct.comedi_subdevice* %32)
  br label %43

34:                                               ; preds = %17, %17
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %37 = call i32 @ni_gpct_cancel(%struct.comedi_device* %35, %struct.comedi_subdevice* %36)
  br label %43

38:                                               ; preds = %17
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %41 = call i32 @ni_cdio_cancel(%struct.comedi_device* %39, %struct.comedi_subdevice* %40)
  br label %43

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42, %38, %34, %30, %26
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %47 = call i32 @comedi_event(%struct.comedi_device* %45, %struct.comedi_subdevice* %46)
  ret void
}

declare dso_local i32 @ni_ai_reset(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_ao_reset(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_gpct_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_cdio_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
