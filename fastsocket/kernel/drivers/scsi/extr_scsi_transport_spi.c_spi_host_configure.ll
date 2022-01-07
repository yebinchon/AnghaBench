; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_host_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_spi_host_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.transport_container = type { i32 }
%struct.device = type { %struct.kobject }
%struct.kobject = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.spi_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@dev_attr_signalling = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @spi_host_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_host_configure(%struct.transport_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.transport_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.spi_internal*, align 8
  %10 = alloca %struct.attribute*, align 8
  %11 = alloca i32, align 4
  store %struct.transport_container* %0, %struct.transport_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  store %struct.kobject* %13, %struct.kobject** %7, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.Scsi_Host* @transport_class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.spi_internal* @to_spi_internal(i32 %18)
  store %struct.spi_internal* %19, %struct.spi_internal** %9, align 8
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_attr_signalling, i32 0, i32 0), %struct.attribute** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.spi_internal*, %struct.spi_internal** %9, align 8
  %21 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.kobject*, %struct.kobject** %7, align 8
  %28 = load %struct.attribute*, %struct.attribute** %10, align 8
  %29 = load %struct.attribute*, %struct.attribute** %10, align 8
  %30 = getelementptr inbounds %struct.attribute, %struct.attribute* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @S_IWUSR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @sysfs_chmod_file(%struct.kobject* %27, %struct.attribute* %28, i32 %33)
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %26, %3
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local %struct.Scsi_Host* @transport_class_to_shost(%struct.device*) #1

declare dso_local %struct.spi_internal* @to_spi_internal(i32) #1

declare dso_local i32 @sysfs_chmod_file(%struct.kobject*, %struct.attribute*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
