; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_sas_phy_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_sas_phy_up.c"
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

@.str = private unnamed_addr constant [63 x i8] c"portid:%d; phyid:%d; linkrate:%d; portstate:%x; devicetype:%x\0A\00", align 1
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
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
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
  %24 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %25 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, -268435456
  %30 = lshr i32 %29, 28
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 16711680
  %37 = ashr i32 %36, 16
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %42, i32 0, i32 3
  %44 = load %struct.pm8001_port*, %struct.pm8001_port** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %44, i64 %45
  store %struct.pm8001_port* %46, %struct.pm8001_port** %12, align 8
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 2
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %48, align 8
  store %struct.sas_ha_struct* %49, %struct.sas_ha_struct** %13, align 8
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %50, i32 0, i32 1
  %52 = load %struct.pm8001_phy*, %struct.pm8001_phy** %51, align 8
  %53 = load i64, i64* %10, align 8
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
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %16, align 8
  %68 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  %69 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %62, i32 %68)
  %70 = load i64, i64* %16, align 8
  switch i64 %70, label %106 [
    i64 128, label %71
    i64 130, label %75
    i64 131, label %88
    i64 129, label %97
  ]

71:                                               ; preds = %2
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %73 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %72, i32 %73)
  br label %111

75:                                               ; preds = %2
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %76, i32 %77)
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* @PHY_NOTIFY_ENABLE_SPINUP, align 4
  %82 = call i32 @pm80xx_chip_phy_ctl_req(%struct.pm8001_hba_info* %79, i64 %80, i32 %81)
  %83 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %84 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %85, i64 %86)
  br label %111

88:                                               ; preds = %2
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %90 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %89, i32 %90)
  %92 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %93 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  %94 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %94, i64 %95)
  br label %111

97:                                               ; preds = %2
  %98 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %99 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %100 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %98, i32 %99)
  %101 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %102 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  %103 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %103, i64 %104)
  br label %111

106:                                              ; preds = %2
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %108 = load i64, i64* %16, align 8
  %109 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %108)
  %110 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %107, i32 %109)
  br label %111

111:                                              ; preds = %106, %97, %88, %75, %71
  %112 = load i32, i32* @PORT_TYPE_SAS, align 4
  %113 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %114 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %119 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %122 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %124 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 130
  br i1 %127, label %128, label %133

128:                                              ; preds = %111
  %129 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %130 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %131 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  br label %145

133:                                              ; preds = %111
  %134 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %135 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 128
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %141 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %142 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %133
  br label %145

145:                                              ; preds = %144, %128
  %146 = load i32, i32* @SAS_OOB_MODE, align 4
  %147 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %148 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i32 %146, i32* %149, align 8
  %150 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %151 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %150, i32 0, i32 0
  %152 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %151, align 8
  %153 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %154 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %153, i32 0, i32 2
  %155 = load i32, i32* @PHYE_OOB_DONE, align 4
  %156 = call i32 %152(%struct.TYPE_5__* %154, i32 %155)
  %157 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %158 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @spin_lock_irqsave(i32* %159, i64 %160)
  %162 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %163 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %166 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %165, i32 0, i32 0
  %167 = call i32 @memcpy(i32 %164, %struct.TYPE_6__* %166, i32 0)
  %168 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %169 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %171 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %172 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy* %170, i32 %174)
  %176 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %177 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* %178, i64 %179)
  %181 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %182 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @PM8001F_RUN_TIME, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %145
  %187 = call i32 @mdelay(i32 200)
  br label %188

188:                                              ; preds = %186, %145
  %189 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info* %189, i64 %190)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pm80xx_chip_phy_ctl_req(%struct.pm8001_hba_info*, i64, i32) #1

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
