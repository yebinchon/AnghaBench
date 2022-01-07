; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh.c_scsi_dh_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_device_handler* }
%struct.scsi_device_handler = type { i32 (%struct.scsi_device.0*, i8*)* }
%struct.scsi_device.0 = type opaque

@SCSI_DH_NOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_dh_set_params(%struct.request_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.scsi_device_handler*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @SCSI_DH_NOSYS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  store %struct.scsi_device_handler* null, %struct.scsi_device_handler** %9, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %18, align 8
  store %struct.scsi_device* %19, %struct.scsi_device** %8, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %21 = icmp ne %struct.scsi_device* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %31, align 8
  store %struct.scsi_device_handler* %32, %struct.scsi_device_handler** %9, align 8
  br label %33

33:                                               ; preds = %27, %22, %2
  %34 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %9, align 8
  %35 = icmp ne %struct.scsi_device_handler* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %9, align 8
  %38 = getelementptr inbounds %struct.scsi_device_handler, %struct.scsi_device_handler* %37, i32 0, i32 0
  %39 = load i32 (%struct.scsi_device.0*, i8*)*, i32 (%struct.scsi_device.0*, i8*)** %38, align 8
  %40 = icmp ne i32 (%struct.scsi_device.0*, i8*)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 0
  %44 = call i64 @get_device(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %41, %36, %33
  %48 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %49 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32 %50, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %9, align 8
  %59 = getelementptr inbounds %struct.scsi_device_handler, %struct.scsi_device_handler* %58, i32 0, i32 0
  %60 = load i32 (%struct.scsi_device.0*, i8*)*, i32 (%struct.scsi_device.0*, i8*)** %59, align 8
  %61 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %62 = bitcast %struct.scsi_device* %61 to %struct.scsi_device.0*
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 %60(%struct.scsi_device.0* %62, i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  %67 = call i32 @put_device(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %55
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @get_device(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
