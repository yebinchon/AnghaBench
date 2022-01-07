; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_hw_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_hw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_phy*, %struct.sas_ha_struct* }
%struct.pm8001_phy = type { i32, i32, %struct.asd_sas_phy, i32 }
%struct.asd_sas_phy = type { i32, i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)*, %struct.asd_sas_phy** }
%struct.asd_sas_phy.0 = type opaque
%struct.asd_sas_phy.1 = type opaque
%struct.hw_event_resp = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"outbound queue HW event & event type : \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"HW_EVENT_PHY_START_STATUS status = %x\0A\00", align 1
@PM8001F_RUN_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"HW_EVENT_PHY_START_STATUS\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"HW_EVENT_SATA_PHY_UP\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"HW_EVENT_PHY_STOP_STATUS status = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"HW_EVENT_SATA_SPINUP_HOLD\0A\00", align 1
@PHYE_SPINUP_HOLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"HW_EVENT_PHY_DOWN\0A\00", align 1
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_INVALID\0A\00", align 1
@PORTE_LINK_RESET_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"HW_EVENT_BROADCAST_CHANGE\0A\00", align 1
@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"HW_EVENT_PHY_ERROR\0A\00", align 1
@PHYE_OOB_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_EXP\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"HW_EVENT_LINK_ERR_INVALID_DWORD\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"HW_EVENT_LINK_ERR_DISPARITY_ERROR\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"HW_EVENT_LINK_ERR_CODE_VIOLATION\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"HW_EVENT_LINK_ERR_LOSS_OF_DWORD_SYNCH\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"HW_EVENT_MALFUNCTION\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_SES\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"HW_EVENT_INBOUND_CRC_ERROR\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"HW_EVENT_HARD_RESET_RECEIVED\0A\00", align 1
@PORTE_HARD_RESET = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"HW_EVENT_ID_FRAME_TIMEOUT\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"HW_EVENT_LINK_ERR_PHY_RESET_FAILED\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"HW_EVENT_PORT_RESET_TIMER_TMO\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"HW_EVENT_PORT_RECOVERY_TIMER_TMO\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_RECOVER\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"HW_EVENT_PORT_RESET_COMPLETE\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"EVENT_BROADCAST_ASYNCH_EVENT\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Unknown event type = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_hw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_hw_event(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hw_event_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.sas_ha_struct*, align 8
  %13 = alloca %struct.pm8001_phy*, align 8
  %14 = alloca %struct.asd_sas_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %17, %struct.hw_event_resp** %6, align 8
  %18 = load %struct.hw_event_resp*, %struct.hw_event_resp** %6, align 8
  %19 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 240
  %27 = ashr i32 %26, 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 16776960
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 251658240
  %34 = ashr i32 %33, 24
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %11, align 8
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 2
  %38 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %37, align 8
  store %struct.sas_ha_struct* %38, %struct.sas_ha_struct** %12, align 8
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %39, i32 0, i32 1
  %41 = load %struct.pm8001_phy*, %struct.pm8001_phy** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %41, i64 %42
  store %struct.pm8001_phy* %43, %struct.pm8001_phy** %13, align 8
  %44 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %45 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %44, i32 0, i32 2
  %46 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %46, i64 %47
  %49 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %48, align 8
  store %struct.asd_sas_phy* %49, %struct.asd_sas_phy** %14, align 8
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %406 [
    i32 137, label %54
    i32 130, label %76
    i32 129, label %83
    i32 136, label %90
    i32 128, label %101
    i32 139, label %113
    i32 135, label %132
    i32 151, label %147
    i32 138, label %172
    i32 150, label %189
    i32 143, label %210
    i32 144, label %229
    i32 145, label %248
    i32 142, label %267
    i32 140, label %286
    i32 149, label %290
    i32 146, label %311
    i32 148, label %319
    i32 147, label %330
    i32 141, label %345
    i32 131, label %364
    i32 133, label %379
    i32 134, label %394
    i32 132, label %398
    i32 152, label %402
  ]

54:                                               ; preds = %2
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %55, i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %63 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PM8001F_RUN_TIME, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %71 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @complete(i32 %72)
  br label %74

74:                                               ; preds = %69, %61
  br label %75

75:                                               ; preds = %74, %54
  br label %411

76:                                               ; preds = %2
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %78 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %77, i32 %78)
  %80 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info* %80, i8* %81)
  br label %411

83:                                               ; preds = %2
  %84 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %85 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %84, i32 %85)
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info* %87, i8* %88)
  br label %411

90:                                               ; preds = %2
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %92)
  %94 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %91, i32 %93)
  %95 = load i64, i64* %11, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %99 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %90
  br label %411

101:                                              ; preds = %2
  %102 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %103 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %104 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %102, i32 %103)
  %105 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %106 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %105, i32 0, i32 1
  %107 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %106, align 8
  %108 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %109 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %108, i32 0, i32 2
  %110 = bitcast %struct.asd_sas_phy* %109 to %struct.asd_sas_phy.1*
  %111 = load i32, i32* @PHYE_SPINUP_HOLD, align 4
  %112 = call i32 %107(%struct.asd_sas_phy.1* %110, i32 %111)
  br label %411

113:                                              ; preds = %2
  %114 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %115 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %116 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %114, i32 %115)
  %117 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %118 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %117, i32 0, i32 1
  %119 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %118, align 8
  %120 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %121 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %120, i32 0, i32 2
  %122 = bitcast %struct.asd_sas_phy* %121 to %struct.asd_sas_phy.1*
  %123 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %124 = call i32 %119(%struct.asd_sas_phy.1* %122, i32 %123)
  %125 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %126 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %128 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @hw_event_phy_down(%struct.pm8001_hba_info* %129, i8* %130)
  br label %411

132:                                              ; preds = %2
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %134 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %135 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %133, i32 %134)
  %136 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %137 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %136)
  %138 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %139 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %141 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %140, i32 0, i32 0
  %142 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %141, align 8
  %143 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %144 = bitcast %struct.asd_sas_phy* %143 to %struct.asd_sas_phy.0*
  %145 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %146 = call i32 %142(%struct.asd_sas_phy.0* %144, i32 %145)
  br label %411

147:                                              ; preds = %2
  %148 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %149 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %150 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %148, i32 %149)
  %151 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %151, i32 0, i32 151, i64 %152, i64 %153, i32 1, i32 0)
  %155 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %156 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %155, i32 0, i32 1
  %157 = load i64, i64* %5, align 8
  %158 = call i32 @spin_lock_irqsave(i32* %156, i64 %157)
  %159 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %160 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %159, i32 0, i32 0
  store i32 151, i32* %160, align 4
  %161 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %162 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %161, i32 0, i32 1
  %163 = load i64, i64* %5, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  %165 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %166 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %165, i32 0, i32 0
  %167 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %166, align 8
  %168 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %169 = bitcast %struct.asd_sas_phy* %168 to %struct.asd_sas_phy.0*
  %170 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %171 = call i32 %167(%struct.asd_sas_phy.0* %169, i32 %170)
  br label %411

172:                                              ; preds = %2
  %173 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %174 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %175 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %173, i32 %174)
  %176 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %177 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %176, i32 0, i32 2
  %178 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %177)
  %179 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %180 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %179, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %182 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %181, i32 0, i32 1
  %183 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %182, align 8
  %184 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %185 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %184, i32 0, i32 2
  %186 = bitcast %struct.asd_sas_phy* %185 to %struct.asd_sas_phy.1*
  %187 = load i32, i32* @PHYE_OOB_ERROR, align 4
  %188 = call i32 %183(%struct.asd_sas_phy.1* %186, i32 %187)
  br label %411

189:                                              ; preds = %2
  %190 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %191 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %192 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %190, i32 %191)
  %193 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %194 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %193, i32 0, i32 1
  %195 = load i64, i64* %5, align 8
  %196 = call i32 @spin_lock_irqsave(i32* %194, i64 %195)
  %197 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %198 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %197, i32 0, i32 0
  store i32 150, i32* %198, align 4
  %199 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %200 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %199, i32 0, i32 1
  %201 = load i64, i64* %5, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  %203 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %204 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %203, i32 0, i32 0
  %205 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %204, align 8
  %206 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %207 = bitcast %struct.asd_sas_phy* %206 to %struct.asd_sas_phy.0*
  %208 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %209 = call i32 %205(%struct.asd_sas_phy.0* %207, i32 %208)
  br label %411

210:                                              ; preds = %2
  %211 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %212 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %213 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %211, i32 %212)
  %214 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* %9, align 8
  %217 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %214, i32 0, i32 143, i64 %215, i64 %216, i32 0, i32 0)
  %218 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %219 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %218)
  %220 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %221 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  %222 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %223 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %222, i32 0, i32 0
  %224 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %223, align 8
  %225 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %226 = bitcast %struct.asd_sas_phy* %225 to %struct.asd_sas_phy.0*
  %227 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %228 = call i32 %224(%struct.asd_sas_phy.0* %226, i32 %227)
  br label %411

229:                                              ; preds = %2
  %230 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %231 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %232 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %230, i32 %231)
  %233 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %234 = load i64, i64* %8, align 8
  %235 = load i64, i64* %9, align 8
  %236 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %233, i32 0, i32 144, i64 %234, i64 %235, i32 0, i32 0)
  %237 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %238 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %237)
  %239 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %240 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %239, i32 0, i32 1
  store i32 0, i32* %240, align 4
  %241 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %242 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %241, i32 0, i32 0
  %243 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %242, align 8
  %244 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %245 = bitcast %struct.asd_sas_phy* %244 to %struct.asd_sas_phy.0*
  %246 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %247 = call i32 %243(%struct.asd_sas_phy.0* %245, i32 %246)
  br label %411

248:                                              ; preds = %2
  %249 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %250 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %251 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %249, i32 %250)
  %252 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* %9, align 8
  %255 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %252, i32 0, i32 145, i64 %253, i64 %254, i32 0, i32 0)
  %256 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %257 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %256)
  %258 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %259 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %258, i32 0, i32 1
  store i32 0, i32* %259, align 4
  %260 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %261 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %260, i32 0, i32 0
  %262 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %261, align 8
  %263 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %264 = bitcast %struct.asd_sas_phy* %263 to %struct.asd_sas_phy.0*
  %265 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %266 = call i32 %262(%struct.asd_sas_phy.0* %264, i32 %265)
  br label %411

267:                                              ; preds = %2
  %268 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %269 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %270 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %268, i32 %269)
  %271 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %272 = load i64, i64* %8, align 8
  %273 = load i64, i64* %9, align 8
  %274 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %271, i32 0, i32 142, i64 %272, i64 %273, i32 0, i32 0)
  %275 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %276 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %275)
  %277 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %278 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %277, i32 0, i32 1
  store i32 0, i32* %278, align 4
  %279 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %280 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %279, i32 0, i32 0
  %281 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %280, align 8
  %282 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %283 = bitcast %struct.asd_sas_phy* %282 to %struct.asd_sas_phy.0*
  %284 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %285 = call i32 %281(%struct.asd_sas_phy.0* %283, i32 %284)
  br label %411

286:                                              ; preds = %2
  %287 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %288 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %289 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %287, i32 %288)
  br label %411

290:                                              ; preds = %2
  %291 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %292 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %293 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %291, i32 %292)
  %294 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %295 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %294, i32 0, i32 1
  %296 = load i64, i64* %5, align 8
  %297 = call i32 @spin_lock_irqsave(i32* %295, i64 %296)
  %298 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %299 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %298, i32 0, i32 0
  store i32 149, i32* %299, align 4
  %300 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %301 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %300, i32 0, i32 1
  %302 = load i64, i64* %5, align 8
  %303 = call i32 @spin_unlock_irqrestore(i32* %301, i64 %302)
  %304 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %305 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %304, i32 0, i32 0
  %306 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %305, align 8
  %307 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %308 = bitcast %struct.asd_sas_phy* %307 to %struct.asd_sas_phy.0*
  %309 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %310 = call i32 %306(%struct.asd_sas_phy.0* %308, i32 %309)
  br label %411

311:                                              ; preds = %2
  %312 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %313 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %314 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %312, i32 %313)
  %315 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %316 = load i64, i64* %8, align 8
  %317 = load i64, i64* %9, align 8
  %318 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %315, i32 0, i32 146, i64 %316, i64 %317, i32 0, i32 0)
  br label %411

319:                                              ; preds = %2
  %320 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %321 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %322 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %320, i32 %321)
  %323 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %324 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %323, i32 0, i32 0
  %325 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %324, align 8
  %326 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %327 = bitcast %struct.asd_sas_phy* %326 to %struct.asd_sas_phy.0*
  %328 = load i32, i32* @PORTE_HARD_RESET, align 4
  %329 = call i32 %325(%struct.asd_sas_phy.0* %327, i32 %328)
  br label %411

330:                                              ; preds = %2
  %331 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %332 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %333 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %331, i32 %332)
  %334 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %335 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %334)
  %336 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %337 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %336, i32 0, i32 1
  store i32 0, i32* %337, align 4
  %338 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %339 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %338, i32 0, i32 0
  %340 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %339, align 8
  %341 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %342 = bitcast %struct.asd_sas_phy* %341 to %struct.asd_sas_phy.0*
  %343 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %344 = call i32 %340(%struct.asd_sas_phy.0* %342, i32 %343)
  br label %411

345:                                              ; preds = %2
  %346 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %347 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  %348 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %346, i32 %347)
  %349 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %350 = load i64, i64* %8, align 8
  %351 = load i64, i64* %9, align 8
  %352 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %349, i32 0, i32 141, i64 %350, i64 %351, i32 0, i32 0)
  %353 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %354 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %353)
  %355 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %356 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %355, i32 0, i32 1
  store i32 0, i32* %356, align 4
  %357 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %358 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %357, i32 0, i32 0
  %359 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %358, align 8
  %360 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %361 = bitcast %struct.asd_sas_phy* %360 to %struct.asd_sas_phy.0*
  %362 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %363 = call i32 %359(%struct.asd_sas_phy.0* %361, i32 %362)
  br label %411

364:                                              ; preds = %2
  %365 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %366 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %367 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %365, i32 %366)
  %368 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %369 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %368)
  %370 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %371 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %370, i32 0, i32 1
  store i32 0, i32* %371, align 4
  %372 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %373 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %372, i32 0, i32 0
  %374 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %373, align 8
  %375 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %376 = bitcast %struct.asd_sas_phy* %375 to %struct.asd_sas_phy.0*
  %377 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %378 = call i32 %374(%struct.asd_sas_phy.0* %376, i32 %377)
  br label %411

379:                                              ; preds = %2
  %380 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %381 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %382 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %380, i32 %381)
  %383 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %384 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %383)
  %385 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %386 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %385, i32 0, i32 1
  store i32 0, i32* %386, align 4
  %387 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %388 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %387, i32 0, i32 0
  %389 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %388, align 8
  %390 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %391 = bitcast %struct.asd_sas_phy* %390 to %struct.asd_sas_phy.0*
  %392 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %393 = call i32 %389(%struct.asd_sas_phy.0* %391, i32 %392)
  br label %411

394:                                              ; preds = %2
  %395 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %396 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %397 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %395, i32 %396)
  br label %411

398:                                              ; preds = %2
  %399 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %400 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %401 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %399, i32 %400)
  br label %411

402:                                              ; preds = %2
  %403 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %404 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %405 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %403, i32 %404)
  br label %411

406:                                              ; preds = %2
  %407 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %408 = load i32, i32* %10, align 4
  %409 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %408)
  %410 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %407, i32 %409)
  br label %411

411:                                              ; preds = %406, %402, %398, %394, %379, %364, %345, %330, %319, %311, %290, %286, %267, %248, %229, %210, %189, %172, %147, %132, %113, %101, %100, %83, %76, %75
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_phy_down(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @sas_phy_disconnected(%struct.asd_sas_phy*) #1

declare dso_local i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
