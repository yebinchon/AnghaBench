; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_fc.c_cfc_handle_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_fc.c_cfc_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, %struct.TYPE_2__* }
%struct.comedi_device.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfc_handle_events(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @COMEDI_CB_EOA, align 4
  %19 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = bitcast %struct.comedi_device* %29 to %struct.comedi_device.0*
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %32 = call i32 %28(%struct.comedi_device.0* %30, %struct.comedi_subdevice* %31)
  br label %33

33:                                               ; preds = %25, %16
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %36 = call i32 @comedi_event(%struct.comedi_device* %34, %struct.comedi_subdevice* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
