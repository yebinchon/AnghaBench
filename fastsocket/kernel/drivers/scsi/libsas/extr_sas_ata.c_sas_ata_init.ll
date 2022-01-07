; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.ata_port*, i32 }
%struct.ata_port = type { %struct.Scsi_Host*, i32, %struct.domain_device* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_6__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }

@sas_sata_ops = common dso_local global i32 0, align 4
@sata_port_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ata_sas_port_alloc failed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_ata_init(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %4, align 8
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %5, align 8
  %17 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %18 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %21 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ata_host_init(i32* %19, i32 %22, i32* @sas_sata_ops)
  %24 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %25 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %28 = call %struct.ata_port* @ata_sas_port_alloc(i32* %26, i32* @sata_port_info, %struct.Scsi_Host* %27)
  store %struct.ata_port* %28, %struct.ata_port** %6, align 8
  %29 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %30 = icmp ne %struct.ata_port* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %58

35:                                               ; preds = %1
  %36 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 2
  store %struct.domain_device* %36, %struct.domain_device** %38, align 8
  %39 = load i32, i32* @ATA_CBL_SATA, align 4
  %40 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  store %struct.Scsi_Host* %42, %struct.Scsi_Host** %44, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %46 = call i32 @ata_sas_port_init(%struct.ata_port* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %51 = call i32 @ata_sas_port_destroy(%struct.ata_port* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %35
  %54 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %55 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %56 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store %struct.ata_port* %54, %struct.ata_port** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %49, %31
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ata_host_init(i32*, i32, i32*) #1

declare dso_local %struct.ata_port* @ata_sas_port_alloc(i32*, i32*, %struct.Scsi_Host*) #1

declare dso_local i32 @SAS_DPRINTK(i8*) #1

declare dso_local i32 @ata_sas_port_init(%struct.ata_port*) #1

declare dso_local i32 @ata_sas_port_destroy(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
