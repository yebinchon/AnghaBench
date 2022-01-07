; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_activity_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_activity_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_device*, i32)* }
%struct.ata_device = type { i32 }

@ATA_FLAG_SW_ACTIVITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ata_scsi_activity_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ata_scsi_activity_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %10, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ata_port* @ata_shost_to_port(i32 %19)
  store %struct.ata_port* %20, %struct.ata_port** %11, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %23 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %21, %struct.scsi_device* %22)
  store %struct.ata_device* %23, %struct.ata_device** %12, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ata_device*, i32)*, i32 (%struct.ata_device*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.ata_device*, i32)* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %4
  %31 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATA_FLAG_SW_ACTIVITY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @simple_strtoul(i8* %38, i32* null, i32 0)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  switch i32 %40, label %57 [
    i32 128, label %41
    i32 129, label %41
    i32 130, label %41
  ]

41:                                               ; preds = %37, %37, %37
  %42 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ata_device*, i32)*, i32 (%struct.ata_device*, i32)** %45, align 8
  %47 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 %46(%struct.ata_device* %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %5, align 8
  br label %61

54:                                               ; preds = %41
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %5, align 8
  br label %61

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57, %30, %4
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %58, %54, %52
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
