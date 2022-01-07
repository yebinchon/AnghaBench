; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_get_local_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_get_local_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i32 }
%struct.domain_device = type { %struct.sas_phy*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_phy* @sas_get_local_phy(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.sas_phy*, align 8
  %5 = alloca i64, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %6 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  store %struct.sas_ha_struct* %10, %struct.sas_ha_struct** %3, align 8
  %11 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %12 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %11, i32 0, i32 0
  %13 = load %struct.sas_phy*, %struct.sas_phy** %12, align 8
  %14 = icmp ne %struct.sas_phy* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %19 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %23 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %22, i32 0, i32 0
  %24 = load %struct.sas_phy*, %struct.sas_phy** %23, align 8
  store %struct.sas_phy* %24, %struct.sas_phy** %4, align 8
  %25 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %26 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %25, i32 0, i32 0
  %27 = call i32 @get_device(i32* %26)
  %28 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %29 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  ret %struct.sas_phy* %32
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
