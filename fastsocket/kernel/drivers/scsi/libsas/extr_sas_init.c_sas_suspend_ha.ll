; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_sas_suspend_ha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_sas_suspend_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, i32, %struct.asd_sas_port**, %struct.TYPE_2__ }
%struct.asd_sas_port = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DISCE_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_suspend_ha(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca %struct.sas_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_sas_port*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %2, align 8
  %5 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %6 = call i32 @sas_disable_events(%struct.sas_ha_struct* %5)
  %7 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %8 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @scsi_block_requests(i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 2
  %21 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %21, i64 %23
  %25 = load %struct.asd_sas_port*, %struct.asd_sas_port** %24, align 8
  store %struct.asd_sas_port* %25, %struct.asd_sas_port** %4, align 8
  %26 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %27 = load i32, i32* @DISCE_SUSPEND, align 4
  %28 = call i32 @sas_discover_event(%struct.asd_sas_port* %26, i32 %27)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %34 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %37 = call i32 @__sas_drain_work(%struct.sas_ha_struct* %36)
  %38 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %39 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  ret void
}

declare dso_local i32 @sas_disable_events(%struct.sas_ha_struct*) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @sas_discover_event(%struct.asd_sas_port*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sas_drain_work(%struct.sas_ha_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
