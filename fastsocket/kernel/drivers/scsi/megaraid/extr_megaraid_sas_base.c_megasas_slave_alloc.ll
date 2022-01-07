; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.megasas_instance = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@MEGASAS_MAX_PD_CHANNELS = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@MEGASAS_MAX_DEV_PER_CHANNEL = common dso_local global i32 0, align 4
@MR_PD_STATE_SYSTEM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @megasas_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.megasas_instance*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.megasas_instance* @megasas_lookup_instance(i32 %10)
  store %struct.megasas_instance* %11, %struct.megasas_instance** %5, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MEGASAS_MAX_PD_CHANNELS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TYPE_DISK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  store i64 %33, i64* %4, align 8
  %34 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %35 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MR_PD_STATE_SYSTEM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %23
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TYPE_DISK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %58

54:                                               ; preds = %43, %23
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %54, %53
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.megasas_instance* @megasas_lookup_instance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
