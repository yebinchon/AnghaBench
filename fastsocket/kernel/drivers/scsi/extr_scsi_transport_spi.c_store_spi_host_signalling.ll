; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_store_spi_host_signalling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_store_spi_host_signalling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.spi_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Scsi_Host*, i32)* }

@EINVAL = common dso_local global i64 0, align 8
@SPI_SIGNAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_spi_host_signalling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_spi_host_signalling(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.spi_internal*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.Scsi_Host* @transport_class_to_shost(%struct.device* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %10, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.spi_internal* @to_spi_internal(i32 %17)
  store %struct.spi_internal* %18, %struct.spi_internal** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @spi_signal_to_value(i8* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.spi_internal*, %struct.spi_internal** %11, align 8
  %22 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.Scsi_Host*, i32)*, i32 (%struct.Scsi_Host*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.Scsi_Host*, i32)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %45

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SPI_SIGNAL_UNKNOWN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.spi_internal*, %struct.spi_internal** %11, align 8
  %36 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.Scsi_Host*, i32)*, i32 (%struct.Scsi_Host*, i32)** %38, align 8
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 %39(%struct.Scsi_Host* %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %30
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local %struct.Scsi_Host* @transport_class_to_shost(%struct.device*) #1

declare dso_local %struct.spi_internal* @to_spi_internal(i32) #1

declare dso_local i32 @spi_signal_to_value(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
