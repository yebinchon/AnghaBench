; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_queue_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_queue_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i64, %struct.scsi_core }
%struct.scsi_core = type { i64, i32, i32, i32 }

@list = common dso_local global i32 0, align 4
@SAS_QUEUE_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_queue_up(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.scsi_core*, align 8
  %6 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %8 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %4, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 1
  store %struct.scsi_core* %15, %struct.scsi_core** %5, align 8
  %16 = load i32, i32* @list, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = load %struct.scsi_core*, %struct.scsi_core** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %18, i32 0, i32 2
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %23 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.scsi_core*, %struct.scsi_core** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.scsi_core*, %struct.scsi_core** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %31, i32 0, i32 2
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @SAS_QUEUE_FULL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %1
  %38 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %39 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %38, i32 0, i32 0
  %40 = load %struct.scsi_core*, %struct.scsi_core** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %40, i32 0, i32 3
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.scsi_core*, %struct.scsi_core** %5, align 8
  %44 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.scsi_core*, %struct.scsi_core** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %47, i32 0, i32 2
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.scsi_core*, %struct.scsi_core** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wake_up_process(i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %37, %30
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
