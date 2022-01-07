; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_notify_lldd_dev_gone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_notify_lldd_dev_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.domain_device*)* }

@SAS_DEV_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_notify_lldd_dev_gone(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_internal*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %6 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  store %struct.sas_ha_struct* %10, %struct.sas_ha_struct** %3, align 8
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %4, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sas_internal* @to_sas_internal(i32 %17)
  store %struct.sas_internal* %18, %struct.sas_internal** %5, align 8
  %19 = load %struct.sas_internal*, %struct.sas_internal** %5, align 8
  %20 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %22, align 8
  %24 = icmp ne i32 (%struct.domain_device*)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %42

26:                                               ; preds = %1
  %27 = load i32, i32* @SAS_DEV_FOUND, align 4
  %28 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 0
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.sas_internal*, %struct.sas_internal** %5, align 8
  %34 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %36, align 8
  %38 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %39 = call i32 %37(%struct.domain_device* %38)
  %40 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %41 = call i32 @sas_put_device(%struct.domain_device* %40)
  br label %42

42:                                               ; preds = %25, %32, %26
  ret void
}

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @sas_put_device(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
