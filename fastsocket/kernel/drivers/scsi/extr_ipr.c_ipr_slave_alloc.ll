; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.ipr_resource_entry*, %struct.TYPE_3__* }
%struct.ipr_resource_entry = type { i32, i64, i64, %struct.scsi_device* }
%struct.TYPE_3__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ipr_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_resource_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %13, %struct.ipr_ioa_cfg** %4, align 8
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  store %struct.ipr_resource_entry* null, %struct.ipr_resource_entry** %17, align 8
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32 %22, i64 %23)
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = call %struct.ipr_resource_entry* @ipr_find_sdev(%struct.scsi_device* %25)
  store %struct.ipr_resource_entry* %26, %struct.ipr_resource_entry** %5, align 8
  %27 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %28 = icmp ne %struct.ipr_resource_entry* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %1
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %32 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %31, i32 0, i32 3
  store %struct.scsi_device* %30, %struct.scsi_device** %32, align 8
  %33 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %34 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 0
  store %struct.ipr_resource_entry* %37, %struct.ipr_resource_entry** %39, align 8
  %40 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %41 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %45 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %29
  store i32 0, i32* %7, align 4
  %47 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %48 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %52 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32 %55, i64 %56)
  %58 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %59 = call i32 @ipr_ata_slave_alloc(%struct.scsi_device* %58)
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %63 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32 %66, i64 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %61, %50
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ipr_resource_entry* @ipr_find_sdev(%struct.scsi_device*) #1

declare dso_local i32 @ipr_is_naca_model(%struct.ipr_resource_entry*) #1

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ipr_ata_slave_alloc(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
