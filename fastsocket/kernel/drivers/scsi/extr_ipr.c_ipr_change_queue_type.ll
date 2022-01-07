; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_change_queue_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_change_queue_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipr_resource_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32)* @ipr_change_queue_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_change_queue_type(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  %6 = alloca %struct.ipr_resource_entry*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %13, %struct.ipr_ioa_cfg** %5, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ipr_resource_entry*
  store %struct.ipr_resource_entry* %24, %struct.ipr_resource_entry** %6, align 8
  %25 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %26 = icmp ne %struct.ipr_resource_entry* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %2
  %28 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %29 = call i64 @ipr_is_gscsi(%struct.ipr_resource_entry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @scsi_set_tag_type(%struct.scsi_device* %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @scsi_activate_tcq(%struct.scsi_device* %43, i32 %46)
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @scsi_deactivate_tcq(%struct.scsi_device* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %42
  br label %56

55:                                               ; preds = %31, %27
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %58

57:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32 %63, i64 %64)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @ipr_is_gscsi(%struct.ipr_resource_entry*) #1

declare dso_local i32 @scsi_set_tag_type(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_deactivate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
