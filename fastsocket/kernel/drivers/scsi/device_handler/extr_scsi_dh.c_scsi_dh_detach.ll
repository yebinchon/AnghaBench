; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_device_handler* }
%struct.scsi_device_handler = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_dh_detach(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_device_handler*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  store %struct.scsi_device_handler* null, %struct.scsi_device_handler** %5, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32 %8, i64 %9)
  %11 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 1
  %13 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %13, %struct.scsi_device** %4, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %15 = icmp ne %struct.scsi_device* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = call i32 @get_device(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  store %struct.scsi_device* null, %struct.scsi_device** %4, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32 %25, i64 %26)
  %28 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %29 = icmp ne %struct.scsi_device* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %49

31:                                               ; preds = %22
  %32 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %40, align 8
  store %struct.scsi_device_handler* %41, %struct.scsi_device_handler** %5, align 8
  %42 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %43 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %5, align 8
  %44 = call i32 @scsi_dh_handler_detach(%struct.scsi_device* %42, %struct.scsi_device_handler* %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %46, i32 0, i32 0
  %48 = call i32 @put_device(i32* %47)
  br label %49

49:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @scsi_dh_handler_detach(%struct.scsi_device*, %struct.scsi_device_handler*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
