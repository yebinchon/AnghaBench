; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_hw_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_hw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_phy*, %struct.sas_ha_struct* }
%struct.pm8001_phy = type { i32, %struct.asd_sas_phy, i32 }
%struct.asd_sas_phy = type { i32, i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)*, %struct.asd_sas_phy** }
%struct.asd_sas_phy.0 = type opaque
%struct.asd_sas_phy.1 = type opaque
%struct.hw_event_resp = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"portid:%d phyid:%d event:0x%x status:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"HW_EVENT_PHY_START_STATUS\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HW_EVENT_SATA_PHY_UP\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"HW_EVENT_SATA_SPINUP_HOLD\0A\00", align 1
@PHYE_SPINUP_HOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"HW_EVENT_PHY_DOWN\0A\00", align 1
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_INVALID\0A\00", align 1
@PORTE_LINK_RESET_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"HW_EVENT_BROADCAST_CHANGE\0A\00", align 1
@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"HW_EVENT_PHY_ERROR\0A\00", align 1
@PHYE_OOB_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_EXP\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"HW_EVENT_LINK_ERR_INVALID_DWORD\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"HW_EVENT_LINK_ERR_DISPARITY_ERROR\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"HW_EVENT_LINK_ERR_CODE_VIOLATION\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"HW_EVENT_LINK_ERR_LOSS_OF_DWORD_SYNCH\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"HW_EVENT_MALFUNCTION\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_SES\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"HW_EVENT_INBOUND_CRC_ERROR\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"HW_EVENT_HARD_RESET_RECEIVED\0A\00", align 1
@PORTE_HARD_RESET = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"HW_EVENT_ID_FRAME_TIMEOUT\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"HW_EVENT_LINK_ERR_PHY_RESET_FAILED\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"HW_EVENT_PORT_RESET_TIMER_TMO\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"HW_EVENT_PORT_RECOVERY_TIMER_TMO\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_RECOVER\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"HW_EVENT_PORT_RESET_COMPLETE\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"EVENT_BROADCAST_ASYNCH_EVENT\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Unknown event type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_hw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_hw_event(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hw_event_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.sas_ha_struct*, align 8
  %14 = alloca %struct.pm8001_phy*, align 8
  %15 = alloca %struct.asd_sas_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr i8, i8* %16, i64 4
  %18 = bitcast i8* %17 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %18, %struct.hw_event_resp** %6, align 8
  %19 = load %struct.hw_event_resp*, %struct.hw_event_resp** %6, align 8
  %20 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hw_event_resp*, %struct.hw_event_resp** %6, align 8
  %24 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 16711680
  %32 = ashr i32 %31, 16
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 16776960
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 251658240
  %39 = ashr i32 %38, 24
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %12, align 8
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %41, i32 0, i32 1
  %43 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %42, align 8
  store %struct.sas_ha_struct* %43, %struct.sas_ha_struct** %13, align 8
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 0
  %46 = load %struct.pm8001_phy*, %struct.pm8001_phy** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %46, i64 %47
  store %struct.pm8001_phy* %48, %struct.pm8001_phy** %14, align 8
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %50 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %49, i32 0, i32 2
  %51 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %51, i64 %52
  %54 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %53, align 8
  store %struct.asd_sas_phy* %54, %struct.asd_sas_phy** %15, align 8
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i64, i64* %12, align 8
  %60 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57, i32 %58, i64 %59)
  %61 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %55, i32 %60)
  %62 = load i32, i32* %11, align 4
  switch i32 %62, label %386 [
    i32 130, label %63
    i32 129, label %70
    i32 128, label %77
    i32 137, label %89
    i32 135, label %108
    i32 149, label %123
    i32 136, label %148
    i32 148, label %165
    i32 141, label %186
    i32 142, label %205
    i32 143, label %224
    i32 140, label %243
    i32 138, label %262
    i32 147, label %266
    i32 144, label %287
    i32 146, label %295
    i32 145, label %306
    i32 139, label %321
    i32 131, label %340
    i32 133, label %355
    i32 134, label %374
    i32 132, label %378
    i32 150, label %382
  ]

63:                                               ; preds = %2
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %64, i32 %65)
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info* %67, i8* %68)
  br label %391

70:                                               ; preds = %2
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %71, i32 %72)
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info* %74, i8* %75)
  br label %391

77:                                               ; preds = %2
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %79 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %78, i32 %79)
  %81 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %82 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %81, i32 0, i32 1
  %83 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %82, align 8
  %84 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %85 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %84, i32 0, i32 1
  %86 = bitcast %struct.asd_sas_phy* %85 to %struct.asd_sas_phy.1*
  %87 = load i32, i32* @PHYE_SPINUP_HOLD, align 4
  %88 = call i32 %83(%struct.asd_sas_phy.1* %86, i32 %87)
  br label %391

89:                                               ; preds = %2
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %91 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %92 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %90, i32 %91)
  %93 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %94 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %93, i32 0, i32 1
  %95 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %94, align 8
  %96 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %97 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %96, i32 0, i32 1
  %98 = bitcast %struct.asd_sas_phy* %97 to %struct.asd_sas_phy.1*
  %99 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %100 = call i32 %95(%struct.asd_sas_phy.1* %98, i32 %99)
  %101 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %102 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %104 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %103, i32 0, i32 2
  store i32 0, i32* %104, align 4
  %105 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @hw_event_phy_down(%struct.pm8001_hba_info* %105, i8* %106)
  br label %391

108:                                              ; preds = %2
  %109 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %110 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %111 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %109, i32 %110)
  %112 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %113 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %112)
  %114 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %115 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  %116 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %117 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %116, i32 0, i32 0
  %118 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %117, align 8
  %119 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %120 = bitcast %struct.asd_sas_phy* %119 to %struct.asd_sas_phy.0*
  %121 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %122 = call i32 %118(%struct.asd_sas_phy.0* %120, i32 %121)
  br label %391

123:                                              ; preds = %2
  %124 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %125 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %126 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %124, i32 %125)
  %127 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %127, i32 0, i32 149, i64 %128, i64 %129, i32 1, i32 0)
  %131 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %132 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %131, i32 0, i32 1
  %133 = load i64, i64* %5, align 8
  %134 = call i32 @spin_lock_irqsave(i32* %132, i64 %133)
  %135 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %136 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %135, i32 0, i32 0
  store i32 149, i32* %136, align 4
  %137 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %138 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %137, i32 0, i32 1
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  %141 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %142 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %141, i32 0, i32 0
  %143 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %142, align 8
  %144 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %145 = bitcast %struct.asd_sas_phy* %144 to %struct.asd_sas_phy.0*
  %146 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %147 = call i32 %143(%struct.asd_sas_phy.0* %145, i32 %146)
  br label %391

148:                                              ; preds = %2
  %149 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %150 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %151 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %149, i32 %150)
  %152 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %153 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %152, i32 0, i32 1
  %154 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %153)
  %155 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %156 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %155, i32 0, i32 0
  store i32 0, i32* %156, align 4
  %157 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %158 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %157, i32 0, i32 1
  %159 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %158, align 8
  %160 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %161 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %160, i32 0, i32 1
  %162 = bitcast %struct.asd_sas_phy* %161 to %struct.asd_sas_phy.1*
  %163 = load i32, i32* @PHYE_OOB_ERROR, align 4
  %164 = call i32 %159(%struct.asd_sas_phy.1* %162, i32 %163)
  br label %391

165:                                              ; preds = %2
  %166 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %167 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %168 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %166, i32 %167)
  %169 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %170 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %169, i32 0, i32 1
  %171 = load i64, i64* %5, align 8
  %172 = call i32 @spin_lock_irqsave(i32* %170, i64 %171)
  %173 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %174 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %173, i32 0, i32 0
  store i32 148, i32* %174, align 4
  %175 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %176 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %175, i32 0, i32 1
  %177 = load i64, i64* %5, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32* %176, i64 %177)
  %179 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %180 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %179, i32 0, i32 0
  %181 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %180, align 8
  %182 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %183 = bitcast %struct.asd_sas_phy* %182 to %struct.asd_sas_phy.0*
  %184 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %185 = call i32 %181(%struct.asd_sas_phy.0* %183, i32 %184)
  br label %391

186:                                              ; preds = %2
  %187 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %188 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %189 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %187, i32 %188)
  %190 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %191 = load i64, i64* %9, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %190, i32 0, i32 141, i64 %191, i64 %192, i32 0, i32 0)
  %194 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %195 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %194)
  %196 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %197 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %196, i32 0, i32 0
  store i32 0, i32* %197, align 4
  %198 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %199 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %198, i32 0, i32 0
  %200 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %199, align 8
  %201 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %202 = bitcast %struct.asd_sas_phy* %201 to %struct.asd_sas_phy.0*
  %203 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %204 = call i32 %200(%struct.asd_sas_phy.0* %202, i32 %203)
  br label %391

205:                                              ; preds = %2
  %206 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %207 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %208 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %206, i32 %207)
  %209 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* %10, align 8
  %212 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %209, i32 0, i32 142, i64 %210, i64 %211, i32 0, i32 0)
  %213 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %214 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %213)
  %215 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %216 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %215, i32 0, i32 0
  store i32 0, i32* %216, align 4
  %217 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %218 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %217, i32 0, i32 0
  %219 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %218, align 8
  %220 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %221 = bitcast %struct.asd_sas_phy* %220 to %struct.asd_sas_phy.0*
  %222 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %223 = call i32 %219(%struct.asd_sas_phy.0* %221, i32 %222)
  br label %391

224:                                              ; preds = %2
  %225 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %226 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %227 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %225, i32 %226)
  %228 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %229 = load i64, i64* %9, align 8
  %230 = load i64, i64* %10, align 8
  %231 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %228, i32 0, i32 143, i64 %229, i64 %230, i32 0, i32 0)
  %232 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %233 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %232)
  %234 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %235 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %234, i32 0, i32 0
  store i32 0, i32* %235, align 4
  %236 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %237 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %236, i32 0, i32 0
  %238 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %237, align 8
  %239 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %240 = bitcast %struct.asd_sas_phy* %239 to %struct.asd_sas_phy.0*
  %241 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %242 = call i32 %238(%struct.asd_sas_phy.0* %240, i32 %241)
  br label %391

243:                                              ; preds = %2
  %244 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %245 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %246 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %244, i32 %245)
  %247 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %248 = load i64, i64* %9, align 8
  %249 = load i64, i64* %10, align 8
  %250 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %247, i32 0, i32 140, i64 %248, i64 %249, i32 0, i32 0)
  %251 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %252 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %251)
  %253 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %254 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %253, i32 0, i32 0
  store i32 0, i32* %254, align 4
  %255 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %256 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %255, i32 0, i32 0
  %257 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %256, align 8
  %258 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %259 = bitcast %struct.asd_sas_phy* %258 to %struct.asd_sas_phy.0*
  %260 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %261 = call i32 %257(%struct.asd_sas_phy.0* %259, i32 %260)
  br label %391

262:                                              ; preds = %2
  %263 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %264 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %265 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %263, i32 %264)
  br label %391

266:                                              ; preds = %2
  %267 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %268 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %269 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %267, i32 %268)
  %270 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %271 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %270, i32 0, i32 1
  %272 = load i64, i64* %5, align 8
  %273 = call i32 @spin_lock_irqsave(i32* %271, i64 %272)
  %274 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %275 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %274, i32 0, i32 0
  store i32 147, i32* %275, align 4
  %276 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %277 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %276, i32 0, i32 1
  %278 = load i64, i64* %5, align 8
  %279 = call i32 @spin_unlock_irqrestore(i32* %277, i64 %278)
  %280 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %281 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %280, i32 0, i32 0
  %282 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %281, align 8
  %283 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %284 = bitcast %struct.asd_sas_phy* %283 to %struct.asd_sas_phy.0*
  %285 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %286 = call i32 %282(%struct.asd_sas_phy.0* %284, i32 %285)
  br label %391

287:                                              ; preds = %2
  %288 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %289 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %290 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %288, i32 %289)
  %291 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %292 = load i64, i64* %9, align 8
  %293 = load i64, i64* %10, align 8
  %294 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %291, i32 0, i32 144, i64 %292, i64 %293, i32 0, i32 0)
  br label %391

295:                                              ; preds = %2
  %296 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %297 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %298 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %296, i32 %297)
  %299 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %300 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %299, i32 0, i32 0
  %301 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %300, align 8
  %302 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %303 = bitcast %struct.asd_sas_phy* %302 to %struct.asd_sas_phy.0*
  %304 = load i32, i32* @PORTE_HARD_RESET, align 4
  %305 = call i32 %301(%struct.asd_sas_phy.0* %303, i32 %304)
  br label %391

306:                                              ; preds = %2
  %307 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %308 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %309 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %307, i32 %308)
  %310 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %311 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %310)
  %312 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %313 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %312, i32 0, i32 0
  store i32 0, i32* %313, align 4
  %314 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %315 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %314, i32 0, i32 0
  %316 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %315, align 8
  %317 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %318 = bitcast %struct.asd_sas_phy* %317 to %struct.asd_sas_phy.0*
  %319 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %320 = call i32 %316(%struct.asd_sas_phy.0* %318, i32 %319)
  br label %391

321:                                              ; preds = %2
  %322 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %323 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %324 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %322, i32 %323)
  %325 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %326 = load i64, i64* %9, align 8
  %327 = load i64, i64* %10, align 8
  %328 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %325, i32 0, i32 139, i64 %326, i64 %327, i32 0, i32 0)
  %329 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %330 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %329)
  %331 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %332 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %331, i32 0, i32 0
  store i32 0, i32* %332, align 4
  %333 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %334 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %333, i32 0, i32 0
  %335 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %334, align 8
  %336 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %337 = bitcast %struct.asd_sas_phy* %336 to %struct.asd_sas_phy.0*
  %338 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %339 = call i32 %335(%struct.asd_sas_phy.0* %337, i32 %338)
  br label %391

340:                                              ; preds = %2
  %341 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %342 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %343 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %341, i32 %342)
  %344 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %345 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %344)
  %346 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %347 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %346, i32 0, i32 0
  store i32 0, i32* %347, align 4
  %348 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %349 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %348, i32 0, i32 0
  %350 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %349, align 8
  %351 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %352 = bitcast %struct.asd_sas_phy* %351 to %struct.asd_sas_phy.0*
  %353 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %354 = call i32 %350(%struct.asd_sas_phy.0* %352, i32 %353)
  br label %391

355:                                              ; preds = %2
  %356 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %357 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  %358 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %356, i32 %357)
  %359 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %360 = load i64, i64* %9, align 8
  %361 = load i64, i64* %10, align 8
  %362 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %359, i32 0, i32 133, i64 %360, i64 %361, i32 0, i32 0)
  %363 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %364 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %363)
  %365 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %366 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %365, i32 0, i32 0
  store i32 0, i32* %366, align 4
  %367 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %368 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %367, i32 0, i32 0
  %369 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %368, align 8
  %370 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, align 8
  %371 = bitcast %struct.asd_sas_phy* %370 to %struct.asd_sas_phy.0*
  %372 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %373 = call i32 %369(%struct.asd_sas_phy.0* %371, i32 %372)
  br label %391

374:                                              ; preds = %2
  %375 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %376 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %377 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %375, i32 %376)
  br label %391

378:                                              ; preds = %2
  %379 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %380 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %381 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %379, i32 %380)
  br label %391

382:                                              ; preds = %2
  %383 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %384 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  %385 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %383, i32 %384)
  br label %391

386:                                              ; preds = %2
  %387 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %388 = load i32, i32* %11, align 4
  %389 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %388)
  %390 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %387, i32 %389)
  br label %391

391:                                              ; preds = %386, %382, %378, %374, %355, %340, %321, %306, %295, %287, %266, %262, %243, %224, %205, %186, %165, %148, %123, %108, %89, %77, %70, %63
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_phy_down(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @sas_phy_disconnected(%struct.asd_sas_phy*) #1

declare dso_local i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
