; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_sdev_store_queue_depth_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_sdev_store_queue_depth_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_host_template* }
%struct.scsi_host_template = type { i32 (%struct.scsi_device.0*, i32, i32)* }
%struct.scsi_device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@SCSI_QDEPTH_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sdev_store_queue_depth_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdev_store_queue_depth_rw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_device*, align 8
  %13 = alloca %struct.scsi_host_template*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.scsi_device* @to_scsi_device(%struct.device* %14)
  store %struct.scsi_device* %15, %struct.scsi_device** %12, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.scsi_host_template*, %struct.scsi_host_template** %19, align 8
  store %struct.scsi_host_template* %20, %struct.scsi_host_template** %13, align 8
  %21 = load %struct.scsi_host_template*, %struct.scsi_host_template** %13, align 8
  %22 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %21, i32 0, i32 0
  %23 = load i32 (%struct.scsi_device.0*, i32, i32)*, i32 (%struct.scsi_device.0*, i32, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.scsi_device.0*, i32, i32)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %57

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @simple_strtoul(i8* %29, i32* null, i32 0)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %57

36:                                               ; preds = %28
  %37 = load %struct.scsi_host_template*, %struct.scsi_host_template** %13, align 8
  %38 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %37, i32 0, i32 0
  %39 = load i32 (%struct.scsi_device.0*, i32, i32)*, i32 (%struct.scsi_device.0*, i32, i32)** %38, align 8
  %40 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %41 = bitcast %struct.scsi_device* %40 to %struct.scsi_device.0*
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @SCSI_QDEPTH_DEFAULT, align 4
  %44 = call i32 %39(%struct.scsi_device.0* %41, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %57

49:                                               ; preds = %36
  %50 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %47, %33, %25
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
