; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_init_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { %struct.scsi_core }
%struct.scsi_core = type { i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@sas_queue_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sas_queue_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_init_queue(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.scsi_core*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %3, align 8
  %5 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %6 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %5, i32 0, i32 0
  store %struct.scsi_core* %6, %struct.scsi_core** %4, align 8
  %7 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %7, i32 0, i32 5
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %10, i32 0, i32 4
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %15, i32 0, i32 2
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load i32, i32* @sas_queue_thread, align 4
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %20 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kthread_run(i32 %18, %struct.sas_ha_struct* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.scsi_core*, %struct.scsi_core** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_core, %struct.scsi_core* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.sas_ha_struct*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
