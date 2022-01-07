; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_hw_event_sata_phy_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_hw_event_sata_phy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_phy*, %struct.sas_ha_struct*, %struct.pm8001_port* }
%struct.pm8001_phy = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sas_ha_struct = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.pm8001_port = type { i64, i32 }
%struct.hw_event_resp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"HW_EVENT_SATA_PHY_UP port id = %d, phy id = %d\0A\00", align 1
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@SATA_OOB_MODE = common dso_local global i32 0, align 4
@PHYE_OOB_DONE = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SATA = common dso_local global i32 0, align 4
@SATA_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @hw_event_sata_phy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_event_sata_phy_up(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hw_event_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pm8001_port*, align 8
  %13 = alloca %struct.sas_ha_struct*, align 8
  %14 = alloca %struct.pm8001_phy*, align 8
  %15 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr i8, i8* %16, i64 4
  %18 = bitcast i8* %17 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %18, %struct.hw_event_resp** %5, align 8
  %19 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %20 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -268435456
  %25 = lshr i32 %24, 28
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 15
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 240
  %32 = ashr i32 %31, 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %35 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 15
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %41, i32 0, i32 2
  %43 = load %struct.pm8001_port*, %struct.pm8001_port** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %43, i64 %44
  store %struct.pm8001_port* %45, %struct.pm8001_port** %12, align 8
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %47 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %46, i32 0, i32 1
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %47, align 8
  store %struct.sas_ha_struct* %48, %struct.sas_ha_struct** %13, align 8
  %49 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %50 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %49, i32 0, i32 0
  %51 = load %struct.pm8001_phy*, %struct.pm8001_phy** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %51, i64 %52
  store %struct.pm8001_phy* %53, %struct.pm8001_phy** %14, align 8
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @pm8001_printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  %58 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %54, i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %61 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %63 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %64, i64 %65)
  %67 = load i32, i32* @PORT_TYPE_SATA, align 4
  %68 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %69 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %73 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* @SATA_OOB_MODE, align 4
  %75 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %76 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %79 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %79, align 8
  %81 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %82 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %81, i32 0, i32 2
  %83 = load i32, i32* @PHYE_OOB_DONE, align 4
  %84 = call i32 %80(%struct.TYPE_4__* %82, i32 %83)
  %85 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %86 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %91 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %94 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %93, i32 0, i32 0
  %95 = bitcast i32* %94 to i64*
  %96 = getelementptr inbounds i64, i64* %95, i64 -4
  %97 = call i32 @memcpy(i32 %92, i64* %96, i32 4)
  %98 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %99 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %98, i32 0, i32 1
  store i32 4, i32* %99, align 4
  %100 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %101 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %102 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @SATA_DEV, align 4
  %105 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %106 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %109 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %110 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy* %108, i32 %112)
  %114 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %115 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info* %119, i64 %120)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64, i64) #1

declare dso_local i32 @pm8001_get_lrate_mode(%struct.pm8001_phy*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
