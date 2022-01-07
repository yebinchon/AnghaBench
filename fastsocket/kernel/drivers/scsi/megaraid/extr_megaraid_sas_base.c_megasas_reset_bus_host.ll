; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_reset_bus_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_reset_bus_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.megasas_instance = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@PCI_DEVICE_ID_LSI_FUSION = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_INVADER = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_FURY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @megasas_reset_bus_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_reset_bus_host(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.megasas_instance*
  store %struct.megasas_instance* %12, %struct.megasas_instance** %4, align 8
  %13 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %14 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_DEVICE_ID_LSI_FUSION, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %1
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %22 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_DEVICE_ID_LSI_INVADER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %30 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI_DEVICE_ID_LSI_FURY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28, %20, %1
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @megasas_reset_fusion(%struct.TYPE_6__* %41)
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %45 = call i32 @megasas_generic_reset(%struct.scsi_cmnd* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @megasas_reset_fusion(%struct.TYPE_6__*) #1

declare dso_local i32 @megasas_generic_reset(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
