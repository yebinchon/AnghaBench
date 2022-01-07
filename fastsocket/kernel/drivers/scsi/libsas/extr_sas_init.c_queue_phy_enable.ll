; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_queue_phy_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_queue_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { %struct.sas_phy_data*, %struct.TYPE_2__ }
%struct.sas_phy_data = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_phy*, i32)* @queue_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_phy_enable(%struct.sas_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca %struct.sas_phy_data*, align 8
  %9 = alloca i32, align 4
  store %struct.sas_phy* %0, %struct.sas_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %11 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.Scsi_Host* @dev_to_shost(i32 %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %16 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %15)
  store %struct.sas_ha_struct* %16, %struct.sas_ha_struct** %7, align 8
  %17 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %18 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %17, i32 0, i32 0
  %19 = load %struct.sas_phy_data*, %struct.sas_phy_data** %18, align 8
  store %struct.sas_phy_data* %19, %struct.sas_phy_data** %8, align 8
  %20 = load %struct.sas_phy_data*, %struct.sas_phy_data** %8, align 8
  %21 = icmp ne %struct.sas_phy_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.sas_phy_data*, %struct.sas_phy_data** %8, align 8
  %27 = getelementptr inbounds %struct.sas_phy_data, %struct.sas_phy_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.sas_phy_data*, %struct.sas_phy_data** %8, align 8
  %30 = getelementptr inbounds %struct.sas_phy_data, %struct.sas_phy_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sas_phy_data*, %struct.sas_phy_data** %8, align 8
  %33 = getelementptr inbounds %struct.sas_phy_data, %struct.sas_phy_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %35 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %38 = load %struct.sas_phy_data*, %struct.sas_phy_data** %8, align 8
  %39 = getelementptr inbounds %struct.sas_phy_data, %struct.sas_phy_data* %38, i32 0, i32 3
  %40 = call i32 @sas_queue_work(%struct.sas_ha_struct* %37, i32* %39)
  %41 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %42 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %45 = call i32 @sas_drain_work(%struct.sas_ha_struct* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load %struct.sas_phy_data*, %struct.sas_phy_data** %8, align 8
  %50 = getelementptr inbounds %struct.sas_phy_data, %struct.sas_phy_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %25
  %53 = load %struct.sas_phy_data*, %struct.sas_phy_data** %8, align 8
  %54 = getelementptr inbounds %struct.sas_phy_data, %struct.sas_phy_data* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sas_queue_work(%struct.sas_ha_struct*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sas_drain_work(%struct.sas_ha_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
