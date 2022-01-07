; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_dev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.storvsc_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @storvsc_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_dev_remove(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.storvsc_device*, align 8
  %4 = alloca i64, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %5 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %6 = call %struct.storvsc_device* @hv_get_drvdata(%struct.hv_device* %5)
  store %struct.storvsc_device* %6, %struct.storvsc_device** %3, align 8
  %7 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %8 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.storvsc_device*, %struct.storvsc_device** %3, align 8
  %14 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %16 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.storvsc_device*, %struct.storvsc_device** %3, align 8
  %22 = call i32 @storvsc_wait_to_drain(%struct.storvsc_device* %21)
  %23 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %24 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %30 = call i32 @hv_set_drvdata(%struct.hv_device* %29, i32* null)
  %31 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %32 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %38 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @vmbus_close(%struct.TYPE_2__* %39)
  %41 = load %struct.storvsc_device*, %struct.storvsc_device** %3, align 8
  %42 = call i32 @kfree(%struct.storvsc_device* %41)
  ret i32 0
}

declare dso_local %struct.storvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @storvsc_wait_to_drain(%struct.storvsc_device*) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, i32*) #1

declare dso_local i32 @vmbus_close(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.storvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
