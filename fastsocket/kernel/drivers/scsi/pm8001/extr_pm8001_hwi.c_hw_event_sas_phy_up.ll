; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_hw_event_sas_phy_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_hw_event_sas_phy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64, %struct.pm8001_phy*, %struct.sas_ha_struct*, %struct.pm8001_port* }
%struct.pm8001_phy = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sas_ha_struct = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.pm8001_port = type { i64, i32 }
%struct.hw_event_resp = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"HW_EVENT_SAS_PHY_UP port id = %d, phy id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"device type no device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"end device.\0A\00", align 1
@PHY_NOTIFY_ENABLE_SPINUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"expander device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"fanout expander device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"unknown device type(%x)\0A\00", align 1
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@SAS_OOB_MODE = common dso_local global i32 0, align 4
@PHYE_OOB_DONE = common dso_local global i32 0, align 4
@PM8001F_RUN_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @hw_event_sas_phy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_event_sas_phy_up(%struct.pm8001_hba_info* %0, i8* %1) #0 {
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
  %16 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr i8, i8* %17, i64 4
  %19 = bitcast i8* %18 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %19, %struct.hw_event_resp** %5, align 8
  %20 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %21 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, -268435456
  %26 = lshr i32 %25, 28
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 15
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 240
  %33 = ashr i32 %32, 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %36 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %42, i32 0, i32 3
  %44 = load %struct.pm8001_port*, %struct.pm8001_port** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %44, i64 %45
  store %struct.pm8001_port* %46, %struct.pm8001_port** %12, align 8
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 2
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %48, align 8
  store %struct.sas_ha_struct* %49, %struct.sas_ha_struct** %13, align 8
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %50, i32 0, i32 1
  %52 = load %struct.pm8001_phy*, %struct.pm8001_phy** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %52, i64 %53
  store %struct.pm8001_phy* %54, %struct.pm8001_phy** %14, align 8
  %55 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %56 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %61 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64)
  %66 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %62, i32 %65)
  %67 = load i64, i64* %16, align 8
  switch i64 %67, label %103 [
    i64 128, label %68
    i64 130, label %72
    i64 131, label %85
    i64 129, label %94
  ]

68:                                               ; preds = %2
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %70 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %69, i32 %70)
  br label %108

72:                                               ; preds = %2
  %73 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %74 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %73, i32 %74)
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* @PHY_NOTIFY_ENABLE_SPINUP, align 4
  %79 = call i32 @pm8001_chip_phy_ctl_req(%struct.pm8001_hba_info* %76, i64 %77, i32 %78)
  %80 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %81 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  %82 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %82, i64 %83)
  br label %108

85:                                               ; preds = %2
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %87 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %86, i32 %87)
  %89 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %90 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  %91 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %91, i64 %92)
  br label %108

94:                                               ; preds = %2
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %95, i32 %96)
  %98 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %99 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  %100 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %100, i64 %101)
  br label %108

103:                                              ; preds = %2
  %104 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %105 = load i64, i64* %16, align 8
  %106 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  %107 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %104, i32 %106)
  br label %108

108:                                              ; preds = %103, %94, %85, %72, %68
  %109 = load i32, i32* @PORT_TYPE_SAS, align 4
  %110 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %111 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %116 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  %118 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %119 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %121 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 130
  br i1 %124, label %125, label %130

125:                                              ; preds = %108
  %126 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %127 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %128 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  br label %142

130:                                              ; preds = %108
  %131 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %132 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 128
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %138 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %139 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 8
  br label %141

141:                                              ; preds = %136, %130
  br label %142

142:                                              ; preds = %141, %125
  %143 = load i32, i32* @SAS_OOB_MODE, align 4
  %144 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %145 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  %147 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %148 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %148, align 8
  %150 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %151 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %150, i32 0, i32 2
  %152 = load i32, i32* @PHYE_OOB_DONE, align 4
  %153 = call i32 %149(%struct.TYPE_5__* %151, i32 %152)
  %154 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %155 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %15, align 8
  %158 = call i32 @spin_lock_irqsave(i32* %156, i64 %157)
  %159 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %160 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %163 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %162, i32 0, i32 0
  %164 = call i32 @memcpy(i32 %161, %struct.TYPE_6__* %163, i32 0)
  %165 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %166 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %168 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %169 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy* %167, i32 %171)
  %173 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %174 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %179 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @PM8001F_RUN_TIME, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %142
  %184 = call i32 @mdelay(i32 200)
  br label %185

185:                                              ; preds = %183, %142
  %186 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info* %186, i64 %187)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pm8001_chip_phy_ctl_req(%struct.pm8001_hba_info*, i64, i32) #1

declare dso_local i32 @pm8001_get_lrate_mode(%struct.pm8001_phy*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
