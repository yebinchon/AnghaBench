; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c___scsi_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c___scsi_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_4__*, i32, i32, %struct.device, i64, %struct.device }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scsi_device*)* }
%struct.device = type { i32 }

@SDEV_CANCEL = common dso_local global i32 0, align 4
@SDEV_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__scsi_remove_device(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 5
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %12 = load i32, i32* @SDEV_CANCEL, align 4
  %13 = call i64 @scsi_device_set_state(%struct.scsi_device* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %66

16:                                               ; preds = %10
  %17 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bsg_unregister_queue(i32 %19)
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 3
  %23 = call i32 @device_unregister(%struct.device* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @transport_remove_device(%struct.device* %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @device_del(%struct.device* %26)
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 3
  %31 = call i32 @put_device(%struct.device* %30)
  br label %32

32:                                               ; preds = %28, %16
  %33 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %34 = load i32, i32* @SDEV_DEL, align 4
  %35 = call i64 @scsi_device_set_state(%struct.scsi_device* %33, i32 %34)
  %36 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @blk_cleanup_queue(i32 %38)
  %40 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 1
  %42 = call i32 @cancel_work_sync(i32* %41)
  %43 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)** %48, align 8
  %50 = icmp ne i32 (%struct.scsi_device*)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %32
  %52 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)** %57, align 8
  %59 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %60 = call i32 %58(%struct.scsi_device* %59)
  br label %61

61:                                               ; preds = %51, %32
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @transport_destroy_device(%struct.device* %62)
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = call i32 @put_device(%struct.device* %64)
  br label %66

66:                                               ; preds = %61, %15
  ret void
}

declare dso_local i64 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @bsg_unregister_queue(i32) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @transport_remove_device(%struct.device*) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @transport_destroy_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
