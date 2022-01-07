; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_store_spi_transport_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_spi.c_store_spi_transport_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_target = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.spi_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scsi_target*, i32)* }
%struct.spi_transport_attrs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_spi_transport_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_spi_transport_period(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_target*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca %struct.spi_internal*, align 8
  %13 = alloca %struct.spi_transport_attrs*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.scsi_target* @transport_class_to_starget(%struct.device* %16)
  store %struct.scsi_target* %17, %struct.scsi_target** %10, align 8
  %18 = load %struct.scsi_target*, %struct.scsi_target** %10, align 8
  %19 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.Scsi_Host* @dev_to_shost(i32 %21)
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %11, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.spi_internal* @to_spi_internal(i32 %25)
  store %struct.spi_internal* %26, %struct.spi_internal** %12, align 8
  %27 = load %struct.scsi_target*, %struct.scsi_target** %10, align 8
  %28 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.spi_transport_attrs*
  store %struct.spi_transport_attrs* %29, %struct.spi_transport_attrs** %13, align 8
  %30 = load %struct.spi_internal*, %struct.spi_internal** %12, align 8
  %31 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.scsi_target*, i32)*, i32 (%struct.scsi_target*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.scsi_target*, i32)* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %63

39:                                               ; preds = %4
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @store_spi_transport_period_helper(%struct.device* %40, i8* %41, i64 %42, i32* %14)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %13, align 8
  %46 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %13, align 8
  %51 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.spi_internal*, %struct.spi_internal** %12, align 8
  %55 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.scsi_target*, i32)*, i32 (%struct.scsi_target*, i32)** %57, align 8
  %59 = load %struct.scsi_target*, %struct.scsi_target** %10, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 %58(%struct.scsi_target* %59, i32 %60)
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %53, %36
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.scsi_target* @transport_class_to_starget(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.spi_internal* @to_spi_internal(i32) #1

declare dso_local i32 @store_spi_transport_period_helper(%struct.device*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
