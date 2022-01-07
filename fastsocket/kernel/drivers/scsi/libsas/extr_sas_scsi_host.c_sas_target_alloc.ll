; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_target_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { %struct.domain_device*, %struct.TYPE_2__ }
%struct.domain_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sas_rphy = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_target_alloc(%struct.scsi_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca %struct.sas_rphy*, align 8
  %5 = alloca %struct.domain_device*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  %6 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.sas_rphy* @dev_to_rphy(i32 %9)
  store %struct.sas_rphy* %10, %struct.sas_rphy** %4, align 8
  %11 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %12 = call %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy* %11)
  store %struct.domain_device* %12, %struct.domain_device** %5, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %14 = icmp ne %struct.domain_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = call i32 @kref_get(i32* %20)
  %22 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %23 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %23, i32 0, i32 0
  store %struct.domain_device* %22, %struct.domain_device** %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
