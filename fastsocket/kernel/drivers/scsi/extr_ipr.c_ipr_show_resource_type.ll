; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_show_resource_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_show_resource_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipr_resource_entry = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ipr_show_resource_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_show_resource_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.ipr_ioa_cfg*, align 8
  %9 = alloca %struct.ipr_resource_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.scsi_device* @to_scsi_device(%struct.device* %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %7, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %19, %struct.ipr_ioa_cfg** %8, align 8
  store i64 0, i64* %10, align 8
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %23 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ipr_resource_entry*
  store %struct.ipr_resource_entry* %32, %struct.ipr_resource_entry** %9, align 8
  %33 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %34 = icmp ne %struct.ipr_resource_entry* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %39 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %35, %3
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %44 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32 %47, i64 %48)
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
