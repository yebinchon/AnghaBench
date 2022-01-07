; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_sas_unregister_ha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_sas_unregister_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_unregister_ha(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca %struct.sas_ha_struct*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %2, align 8
  %3 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %4 = call i32 @sas_disable_events(%struct.sas_ha_struct* %3)
  %5 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %6 = call i32 @sas_unregister_ports(%struct.sas_ha_struct* %5)
  %7 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %8 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %11 = call i32 @__sas_drain_work(%struct.sas_ha_struct* %10)
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %13 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %16 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %21 = call i32 @sas_shutdown_queue(%struct.sas_ha_struct* %20)
  %22 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %23 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local i32 @sas_disable_events(%struct.sas_ha_struct*) #1

declare dso_local i32 @sas_unregister_ports(%struct.sas_ha_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sas_drain_work(%struct.sas_ha_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sas_shutdown_queue(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
