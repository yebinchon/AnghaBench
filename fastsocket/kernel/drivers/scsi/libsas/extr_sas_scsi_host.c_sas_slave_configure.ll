; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, i32 }
%struct.domain_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@SAS_END_DEVICE = common dso_local global i64 0, align 8
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@SAS_DEF_QD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"device %llx, LUN %x doesn't support TCQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = call %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device* %6)
  store %struct.domain_device* %7, %struct.domain_device** %4, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SAS_END_DEVICE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %19 = call i64 @dev_is_sata(%struct.domain_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %24 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ata_sas_slave_configure(%struct.scsi_device* %22, i32 %26)
  store i32 0, i32* %2, align 4
  br label %65

28:                                               ; preds = %1
  %29 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %30 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %32, align 8
  store %struct.sas_ha_struct* %33, %struct.sas_ha_struct** %5, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %35 = call i32 @sas_read_port_mode_page(%struct.scsi_device* %34)
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %43 = call i32 @scsi_set_tag_type(%struct.scsi_device* %41, i32 %42)
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = load i32, i32* @SAS_DEF_QD, align 4
  %46 = call i32 @scsi_activate_tcq(%struct.scsi_device* %44, i32 %45)
  br label %62

47:                                               ; preds = %28
  %48 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %49 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SAS_ADDR(i32 %50)
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %59 = call i32 @scsi_set_tag_type(%struct.scsi_device* %58, i32 0)
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = call i32 @scsi_deactivate_tcq(%struct.scsi_device* %60, i32 1)
  br label %62

62:                                               ; preds = %47, %40
  %63 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.domain_device* @sdev_to_domain_dev(%struct.scsi_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @ata_sas_slave_configure(%struct.scsi_device*, i32) #1

declare dso_local i32 @sas_read_port_mode_page(%struct.scsi_device*) #1

declare dso_local i32 @scsi_set_tag_type(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @scsi_deactivate_tcq(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
