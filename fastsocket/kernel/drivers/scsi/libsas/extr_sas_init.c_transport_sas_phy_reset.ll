; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_transport_sas_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_init.c_transport_sas_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_6__, %struct.asd_sas_phy** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.asd_sas_phy = type { i32 }
%struct.sas_internal = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.asd_sas_phy*, i32, i32*)* }
%struct.sas_rphy = type { i32 }
%struct.domain_device = type { i32 }

@PHY_FUNC_HARD_RESET = common dso_local global i32 0, align 4
@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_phy*, i32)* @transport_sas_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transport_sas_phy_reset(%struct.sas_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca %struct.asd_sas_phy*, align 8
  %10 = alloca %struct.sas_internal*, align 8
  %11 = alloca %struct.sas_rphy*, align 8
  %12 = alloca %struct.domain_device*, align 8
  %13 = alloca %struct.domain_device*, align 8
  store %struct.sas_phy* %0, %struct.sas_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PHY_FUNC_HARD_RESET, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @PHY_FUNC_LINK_RESET, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %22 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %26 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.Scsi_Host* @dev_to_shost(i32 %28)
  store %struct.Scsi_Host* %29, %struct.Scsi_Host** %7, align 8
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %31 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %30)
  store %struct.sas_ha_struct* %31, %struct.sas_ha_struct** %8, align 8
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %33 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %32, i32 0, i32 1
  %34 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %33, align 8
  %35 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %36 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %34, i64 %37
  %39 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %38, align 8
  store %struct.asd_sas_phy* %39, %struct.asd_sas_phy** %9, align 8
  %40 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %41 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.sas_internal* @to_sas_internal(i32 %45)
  store %struct.sas_internal* %46, %struct.sas_internal** %10, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %24
  %50 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %9, align 8
  %51 = call i64 @sas_try_ata_reset(%struct.asd_sas_phy* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %93

54:                                               ; preds = %49, %24
  %55 = load %struct.sas_internal*, %struct.sas_internal** %10, align 8
  %56 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %58, align 8
  %60 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %59(%struct.asd_sas_phy* %60, i32 %61, i32* null)
  store i32 %62, i32* %3, align 4
  br label %93

63:                                               ; preds = %20
  %64 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %65 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.sas_rphy* @dev_to_rphy(i32 %67)
  store %struct.sas_rphy* %68, %struct.sas_rphy** %11, align 8
  %69 = load %struct.sas_rphy*, %struct.sas_rphy** %11, align 8
  %70 = call %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy* %69)
  store %struct.domain_device* %70, %struct.domain_device** %12, align 8
  %71 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %72 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %73 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.domain_device* @sas_ex_to_ata(%struct.domain_device* %71, i64 %74)
  store %struct.domain_device* %75, %struct.domain_device** %13, align 8
  %76 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %77 = icmp ne %struct.domain_device* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %63
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %83 = call i32 @sas_ata_schedule_reset(%struct.domain_device* %82)
  %84 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %85 = call i32 @sas_ata_wait_eh(%struct.domain_device* %84)
  store i32 0, i32* %3, align 4
  br label %93

86:                                               ; preds = %78, %63
  %87 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %88 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %89 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @sas_smp_phy_control(%struct.domain_device* %87, i64 %90, i32 %91, i32* null)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %81, %54, %53
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i64 @sas_try_ata_reset(%struct.asd_sas_phy*) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy*) #1

declare dso_local %struct.domain_device* @sas_ex_to_ata(%struct.domain_device*, i64) #1

declare dso_local i32 @sas_ata_schedule_reset(%struct.domain_device*) #1

declare dso_local i32 @sas_ata_wait_eh(%struct.domain_device*) #1

declare dso_local i32 @sas_smp_phy_control(%struct.domain_device*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
