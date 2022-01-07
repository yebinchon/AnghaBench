; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ipr_resource_entry = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@ATA_DEV_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @ipr_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ipr_resource_entry*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %11, %struct.ipr_ioa_cfg** %4, align 8
  %12 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to %struct.ipr_resource_entry*
  store %struct.ipr_resource_entry* %22, %struct.ipr_resource_entry** %3, align 8
  %23 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %24 = icmp ne %struct.ipr_resource_entry* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %1
  %26 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %27 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* @ATA_DEV_NONE, align 4
  %32 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %33 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %31, i32* %41, align 4
  br label %42

42:                                               ; preds = %30, %25
  %43 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %46 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %48 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %47, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %48, align 8
  br label %49

49:                                               ; preds = %42, %1
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32 %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
