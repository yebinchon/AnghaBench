; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_event.c_sas_queue_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_event.c_sas_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sas_work = type { i32, i32 }

@SAS_HA_REGISTERED = common dso_local global i32 0, align 4
@SAS_HA_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_queue_work(%struct.sas_ha_struct* %0, %struct.sas_work* %1) #0 {
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.sas_work*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %3, align 8
  store %struct.sas_work* %1, %struct.sas_work** %4, align 8
  %5 = load i32, i32* @SAS_HA_REGISTERED, align 4
  %6 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %7 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %6, i32 0, i32 2
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %37

11:                                               ; preds = %2
  %12 = load i32, i32* @SAS_HA_DRAINING, align 4
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.sas_work*, %struct.sas_work** %4, align 8
  %19 = getelementptr inbounds %struct.sas_work, %struct.sas_work* %18, i32 0, i32 1
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.sas_work*, %struct.sas_work** %4, align 8
  %24 = getelementptr inbounds %struct.sas_work, %struct.sas_work* %23, i32 0, i32 1
  %25 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %26 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %25, i32 0, i32 1
  %27 = call i32 @list_add(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %22, %17
  br label %37

29:                                               ; preds = %11
  %30 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %31 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sas_work*, %struct.sas_work** %4, align 8
  %35 = getelementptr inbounds %struct.sas_work, %struct.sas_work* %34, i32 0, i32 0
  %36 = call i32 @scsi_queue_work(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %10, %29, %28
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @scsi_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
