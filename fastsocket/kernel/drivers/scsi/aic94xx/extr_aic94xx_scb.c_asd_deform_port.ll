; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_deform_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_deform_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }
%struct.asd_phy = type { %struct.asd_port*, %struct.asd_sas_phy }
%struct.asd_port = type { i32, i32 }
%struct.asd_sas_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*, %struct.asd_phy*)* @asd_deform_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_deform_port(%struct.asd_ha_struct* %0, %struct.asd_phy* %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_phy*, align 8
  %5 = alloca %struct.asd_port*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  %7 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store %struct.asd_phy* %1, %struct.asd_phy** %4, align 8
  %8 = load %struct.asd_phy*, %struct.asd_phy** %4, align 8
  %9 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %8, i32 0, i32 0
  %10 = load %struct.asd_port*, %struct.asd_port** %9, align 8
  store %struct.asd_port* %10, %struct.asd_port** %5, align 8
  %11 = load %struct.asd_phy*, %struct.asd_phy** %4, align 8
  %12 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %11, i32 0, i32 1
  store %struct.asd_sas_phy* %12, %struct.asd_sas_phy** %6, align 8
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.asd_port*, %struct.asd_port** %5, align 8
  %18 = icmp ne %struct.asd_port* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.asd_port*, %struct.asd_port** %5, align 8
  %21 = getelementptr inbounds %struct.asd_port, %struct.asd_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %25 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.asd_port*, %struct.asd_port** %5, align 8
  %30 = getelementptr inbounds %struct.asd_port, %struct.asd_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.asd_phy*, %struct.asd_phy** %4, align 8
  %34 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %33, i32 0, i32 0
  store %struct.asd_port* null, %struct.asd_port** %34, align 8
  br label %35

35:                                               ; preds = %19, %2
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
