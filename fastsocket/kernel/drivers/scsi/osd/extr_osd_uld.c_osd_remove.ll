; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osd_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i32 }
%struct.osd_uld_device = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.scsi_device* }

@.str = private unnamed_addr constant [39 x i8] c"Half cooked osd-device %p,%p || %p!=%p\00", align 1
@osd_sysfs_class = common dso_local global i32 0, align 4
@SCSI_OSD_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @osd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.osd_uld_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.scsi_device* @to_scsi_device(%struct.device* %5)
  store %struct.scsi_device* %6, %struct.scsi_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.osd_uld_device* @dev_get_drvdata(%struct.device* %7)
  store %struct.osd_uld_device* %8, %struct.osd_uld_device** %4, align 8
  %9 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %10 = icmp ne %struct.osd_uld_device* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %13 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = icmp ne %struct.scsi_device* %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %11, %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %21 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %22 = icmp ne %struct.osd_uld_device* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %25 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.scsi_device*, %struct.scsi_device** %26, align 8
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi %struct.scsi_device* [ %27, %23 ], [ null, %28 ]
  %31 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %32 = call i32 @OSD_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.device* %19, %struct.osd_uld_device* %20, %struct.scsi_device* %30, %struct.scsi_device* %31)
  br label %33

33:                                               ; preds = %29, %11
  %34 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %35 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @osd_sysfs_class, align 4
  %40 = load i32, i32* @SCSI_OSD_MAJOR, align 4
  %41 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %42 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @MKDEV(i32 %40, i32 %43)
  %45 = call i32 @device_destroy(i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %48 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %54 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %53, i32 0, i32 0
  %55 = call i32 @cdev_del(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %58 = call i32 @__uld_put(%struct.osd_uld_device* %57)
  ret i32 0
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.osd_uld_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @OSD_ERR(i8*, %struct.device*, %struct.osd_uld_device*, %struct.scsi_device*, %struct.scsi_device*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_4__*) #1

declare dso_local i32 @__uld_put(%struct.osd_uld_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
