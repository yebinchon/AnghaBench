; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__*, %struct.pm8001_phy* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pm8001_phy = type { i32*, %struct.pm8001_hba_info*, i64, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { i32, i32, %struct.pm8001_phy*, %struct.sas_ha_struct*, i32*, i32*, i32, i32, i32, i32, i64, i32, i32 }
%struct.sas_ha_struct = type { i32 }

@SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PHY_TYPE_PHYSICAL = common dso_local global i32 0, align 4
@PHY_ROLE_INITIATOR = common dso_local global i32 0, align 4
@OOB_NOT_CONNECTED = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i32)* @pm8001_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_phy_init(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_phy*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %8 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %7, i32 0, i32 3
  %9 = load %struct.pm8001_phy*, %struct.pm8001_phy** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %9, i64 %11
  store %struct.pm8001_phy* %12, %struct.pm8001_phy** %5, align 8
  %13 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %14 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %13, i32 0, i32 3
  store %struct.asd_sas_phy* %14, %struct.asd_sas_phy** %6, align 8
  %15 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %16 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %19 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %18, i32 0, i32 1
  store %struct.pm8001_hba_info* %17, %struct.pm8001_hba_info** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %30 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @SAS, align 4
  %32 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %33 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %35 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %36 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %38 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @PHY_TYPE_PHYSICAL, align 4
  %40 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %41 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @PHY_ROLE_INITIATOR, align 4
  %43 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %44 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @OOB_NOT_CONNECTED, align 4
  %46 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %47 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %49 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %50 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %53 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %59 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %61 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %65 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %67 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.sas_ha_struct*
  %72 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %73 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %72, i32 0, i32 3
  store %struct.sas_ha_struct* %71, %struct.sas_ha_struct** %73, align 8
  %74 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %75 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %76 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %75, i32 0, i32 2
  store %struct.pm8001_phy* %74, %struct.pm8001_phy** %76, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
