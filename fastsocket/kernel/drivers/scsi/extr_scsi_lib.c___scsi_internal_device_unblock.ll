; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c___scsi_internal_device_unblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c___scsi_internal_device_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.request_queue* }
%struct.request_queue = type { i32 }

@SDEV_BLOCK = common dso_local global i64 0, align 8
@SDEV_TRANSPORT_OFFLINE = common dso_local global i64 0, align 8
@SDEV_CREATED_BLOCK = common dso_local global i64 0, align 8
@SDEV_OFFLINE = common dso_local global i32 0, align 4
@SDEV_CREATED = common dso_local global i32 0, align 4
@SDEV_CANCEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__scsi_internal_device_unblock(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 1
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SDEV_BLOCK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SDEV_TRANSPORT_OFFLINE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %71

27:                                               ; preds = %16
  %28 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SDEV_CREATED_BLOCK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @SDEV_TRANSPORT_OFFLINE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SDEV_OFFLINE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %52

47:                                               ; preds = %38
  %48 = load i32, i32* @SDEV_CREATED, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  br label %70

53:                                               ; preds = %27
  %54 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SDEV_CANCEL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @SDEV_OFFLINE, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %84

69:                                               ; preds = %59, %53
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70, %22
  %72 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %73 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_lock_irqsave(i32 %74, i64 %75)
  %77 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %78 = call i32 @blk_start_queue(%struct.request_queue* %77)
  %79 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %80 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32 %81, i64 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %71, %66
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_start_queue(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
