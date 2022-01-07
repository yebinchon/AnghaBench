; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.scsi_device_handler = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_dh_attach(%struct.request_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_device_handler*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.scsi_device_handler* @get_device_handler(i8* %10)
  store %struct.scsi_device_handler* %11, %struct.scsi_device_handler** %8, align 8
  %12 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %8, align 8
  %13 = icmp ne %struct.scsi_device_handler* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 1
  %25 = load %struct.scsi_device*, %struct.scsi_device** %24, align 8
  store %struct.scsi_device* %25, %struct.scsi_device** %7, align 8
  %26 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %27 = icmp ne %struct.scsi_device* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 0
  %31 = call i32 @get_device(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %17
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %38 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %36
  %45 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %46 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %8, align 8
  %47 = call i32 @scsi_dh_handler_attach(%struct.scsi_device* %45, %struct.scsi_device_handler* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 0
  %50 = call i32 @put_device(i32* %49)
  br label %51

51:                                               ; preds = %44, %36
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.scsi_device_handler* @get_device_handler(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @scsi_dh_handler_attach(%struct.scsi_device*, %struct.scsi_device_handler*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
