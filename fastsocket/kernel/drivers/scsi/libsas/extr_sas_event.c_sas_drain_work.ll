; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_event.c_sas_drain_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_event.c_sas_drain_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, i32 }

@SAS_HA_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_drain_work(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %3, align 8
  %5 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %6 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @SAS_HA_REGISTERED, align 4
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %20 = call i32 @__sas_drain_work(%struct.sas_ha_struct* %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %23 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__sas_drain_work(%struct.sas_ha_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
