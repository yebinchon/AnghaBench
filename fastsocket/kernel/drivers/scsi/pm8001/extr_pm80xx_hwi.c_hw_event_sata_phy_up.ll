; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_sata_phy_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_sata_phy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_phy*, %struct.sas_ha_struct*, %struct.pm8001_port* }
%struct.pm8001_phy = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sas_ha_struct = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.pm8001_port = type { i64, i32 }
%struct.hw_event_resp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"port id %d, phy id %d link_rate %d portstate 0x%x\0A\00", align 1
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
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
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
  %23 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %24 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -268435456
  %29 = lshr i32 %28, 28
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 16711680
  %36 = ashr i32 %35, 16
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 15
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %41, i32 0, i32 2
  %43 = load %struct.pm8001_port*, %struct.pm8001_port** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %43, i64 %44
  store %struct.pm8001_port* %45, %struct.pm8001_port** %12, align 8
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %47 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %46, i32 0, i32 1
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %47, align 8
  store %struct.sas_ha_struct* %48, %struct.sas_ha_struct** %13, align 8
  %49 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %50 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %49, i32 0, i32 0
  %51 = load %struct.pm8001_phy*, %struct.pm8001_phy** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %51, i64 %52
  store %struct.pm8001_phy* %53, %struct.pm8001_phy** %14, align 8
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @pm8001_printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56, i64 %57, i64 %58)
  %60 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %54, i32 %59)
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %63 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %65 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %66, i64 %67)
  %69 = load i32, i32* @PORT_TYPE_SATA, align 4
  %70 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %71 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %75 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @SATA_OOB_MODE, align 4
  %77 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %78 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %81 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %81, align 8
  %83 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %84 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %83, i32 0, i32 2
  %85 = load i32, i32* @PHYE_OOB_DONE, align 4
  %86 = call i32 %82(%struct.TYPE_4__* %84, i32 %85)
  %87 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %88 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %93 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %96 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %95, i32 0, i32 0
  %97 = bitcast i32* %96 to i64*
  %98 = getelementptr inbounds i64, i64* %97, i64 -4
  %99 = call i32 @memcpy(i32 %94, i64* %98, i32 4)
  %100 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %101 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %100, i32 0, i32 1
  store i32 4, i32* %101, align 4
  %102 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %103 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %104 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @SATA_DEV, align 4
  %107 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %108 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %111 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %112 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy* %110, i32 %114)
  %116 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %117 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info* %121, i64 %122)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64, i64, i64, i64) #1

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
