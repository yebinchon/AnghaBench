; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.domain_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_change_queue_depth(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.domain_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %10 = call %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device* %9)
  store %struct.domain_device* %10, %struct.domain_device** %8, align 8
  %11 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %12 = call i64 @dev_is_sata(%struct.domain_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %16 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @__ata_change_queue_depth(i32 %18, %struct.scsi_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %41 [
    i32 130, label %25
    i32 128, label %25
    i32 129, label %37
  ]

25:                                               ; preds = %23, %23
  %26 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %33 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %34 = call i32 @scsi_get_tag_type(%struct.scsi_device* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %32, i32 %34, i32 %35)
  br label %44

37:                                               ; preds = %23
  %38 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @scsi_track_queue_full(%struct.scsi_device* %38, i32 %39)
  br label %44

41:                                               ; preds = %23
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %41, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @__ata_change_queue_depth(i32, %struct.scsi_device*, i32, i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @scsi_get_tag_type(%struct.scsi_device*) #1

declare dso_local i32 @scsi_track_queue_full(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
