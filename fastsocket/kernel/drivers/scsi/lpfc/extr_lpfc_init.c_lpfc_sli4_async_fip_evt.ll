; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fip_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fip_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_acqe_fip = type { i32, i32 }
%struct.lpfc_vport = type { i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32* }

@lpfc_trailer_type = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"2546 New FCF event, evt_tag:x%x, index:x%x\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"2788 FCF param modified event, evt_tag:x%x, index:x%x\0A\00", align 1
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"2779 Read FCF (x%x) for updating roundrobin FCF failover bmask\0A\00", align 1
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@FCF_REDISC_EVT = common dso_local global i32 0, align 4
@FCF_SCAN_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"2770 Start FCF table scan per async FCF event, evt_tag:x%x, index:x%x\0A\00", align 1
@LPFC_FCOE_FCF_GET_FIRST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"2547 Issue FCF scan read FCF mailbox command failed (x%x)\0A\00", align 1
@LOG_SLI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"2548 FCF Table full count 0x%x tag 0x%x\0A\00", align 1
@lpfc_acqe_fip_fcf_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"2549 FCF (x%x) disconnected from network, tag:x%x\0A\00", align 1
@FCF_DEAD_DISC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [89 x i8] c"2771 Start FCF fast failover process due to FCF DEAD event: evt_tag:x%x, fcf_index:x%x \0A\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"2772 Issue FCF rediscover mabilbox command failed, fail through to FCF dead event\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"2718 Clear Virtual Link Received for VPI 0x%x tag 0x%x\0A\00", align 1
@FC_VPORT_CVL_RCVD = common dso_local global i32 0, align 4
@LPFC_FDISC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_FDISC = common dso_local global i32 0, align 4
@FCF_ACVL_DISC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"2773 Start FCF failover per CVL, evt_tag:x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"2774 Issue FCF rediscover mabilbox command failed, through to CVL event\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"0288 Unknown FCoE event type 0x%x event tag 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_acqe_fip*)* @lpfc_sli4_async_fip_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_async_fip_evt(%struct.lpfc_hba* %0, %struct.lpfc_acqe_fip* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_acqe_fip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_nodelist*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_vport**, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_acqe_fip* %1, %struct.lpfc_acqe_fip** %4, align 8
  %13 = load i32, i32* @lpfc_trailer_type, align 4
  %14 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %15 = call i32 @bf_get(i32 %13, %struct.lpfc_acqe_fip* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %441 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %147
    i32 131, label %158
    i32 132, label %266
  ]

27:                                               ; preds = %2, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i32, i32* @LOG_FIP, align 4
  %34 = load i32, i32* @LOG_DISCOVERY, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  br label %56

43:                                               ; preds = %27
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = load i32, i32* @KERN_WARNING, align 4
  %46 = load i32, i32* @LOG_FIP, align 4
  %47 = load i32, i32* @LOG_DISCOVERY, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FCF_DISCOVERY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %56
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load i32, i32* @LOG_FIP, align 4
  %68 = load i32, i32* @LOG_DISCOVERY, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %71 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %76 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @lpfc_sli4_read_fcf_rec(%struct.lpfc_hba* %74, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %64, %56
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 5
  %82 = call i32 @spin_lock_irq(i32* %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FCF_TS_INPROG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 5
  %92 = call i32 @spin_unlock_irq(i32* %91)
  br label %450

93:                                               ; preds = %79
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @FCF_REDISC_EVT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 5
  %104 = call i32 @spin_unlock_irq(i32* %103)
  br label %450

105:                                              ; preds = %93
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @FCF_SCAN_DONE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 5
  %116 = call i32 @spin_unlock_irq(i32* %115)
  br label %450

117:                                              ; preds = %105
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 5
  %120 = call i32 @spin_unlock_irq(i32* %119)
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %122 = load i32, i32* @KERN_INFO, align 4
  %123 = load i32, i32* @LOG_FIP, align 4
  %124 = load i32, i32* @LOG_DISCOVERY, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %127 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %130 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %121, i32 %122, i32 %125, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %134 = load i32, i32* @LPFC_FCOE_FCF_GET_FIRST, align 4
  %135 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %133, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %117
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = load i32, i32* @KERN_ERR, align 4
  %141 = load i32, i32* @LOG_FIP, align 4
  %142 = load i32, i32* @LOG_DISCOVERY, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %139, i32 %140, i32 %143, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %138, %117
  br label %450

147:                                              ; preds = %2
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %149 = load i32, i32* @KERN_ERR, align 4
  %150 = load i32, i32* @LOG_SLI, align 4
  %151 = load i32, i32* @lpfc_acqe_fip_fcf_count, align 4
  %152 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %153 = call i32 @bf_get(i32 %151, %struct.lpfc_acqe_fip* %152)
  %154 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %155 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 %156)
  br label %450

158:                                              ; preds = %2
  %159 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %160 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %165 = load i32, i32* @KERN_ERR, align 4
  %166 = load i32, i32* @LOG_FIP, align 4
  %167 = load i32, i32* @LOG_DISCOVERY, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %170 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %173 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %164, i32 %165, i32 %168, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32 %174)
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %177 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %176, i32 0, i32 5
  %178 = call i32 @spin_lock_irq(i32* %177)
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @FCF_DISCOVERY, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %158
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 5
  %189 = call i32 @spin_unlock_irq(i32* %188)
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %191 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %192 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba* %190, i32 %193)
  br label %450

195:                                              ; preds = %158
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 5
  %198 = call i32 @spin_unlock_irq(i32* %197)
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %205 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %195
  br label %450

209:                                              ; preds = %195
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 5
  %212 = call i32 @spin_lock_irq(i32* %211)
  %213 = load i32, i32* @FCF_DEAD_DISC, align 4
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %215 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %213
  store i32 %218, i32* %216, align 4
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %220 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %219, i32 0, i32 5
  %221 = call i32 @spin_unlock_irq(i32* %220)
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = load i32, i32* @KERN_INFO, align 4
  %224 = load i32, i32* @LOG_FIP, align 4
  %225 = load i32, i32* @LOG_DISCOVERY, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %228 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %231 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %222, i32 %223, i32 %226, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0), i32 %229, i32 %232)
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %235 = call i32 @lpfc_sli4_redisc_fcf_table(%struct.lpfc_hba* %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %260

238:                                              ; preds = %209
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %240 = load i32, i32* @KERN_ERR, align 4
  %241 = load i32, i32* @LOG_FIP, align 4
  %242 = load i32, i32* @LOG_DISCOVERY, align 4
  %243 = or i32 %241, %242
  %244 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %239, i32 %240, i32 %243, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0))
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 5
  %247 = call i32 @spin_lock_irq(i32* %246)
  %248 = load i32, i32* @FCF_DEAD_DISC, align 4
  %249 = xor i32 %248, -1
  %250 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %251 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %250, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, %249
  store i32 %254, i32* %252, align 4
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %256 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %255, i32 0, i32 5
  %257 = call i32 @spin_unlock_irq(i32* %256)
  %258 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %259 = call i32 @lpfc_sli4_fcf_dead_failthrough(%struct.lpfc_hba* %258)
  br label %265

260:                                              ; preds = %209
  %261 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %262 = call i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba* %261)
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %264 = call i32 @lpfc_sli4_perform_all_vport_cvl(%struct.lpfc_hba* %263)
  br label %265

265:                                              ; preds = %260, %238
  br label %450

266:                                              ; preds = %2
  %267 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %268 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %271 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 4
  %272 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %273 = load i32, i32* @KERN_ERR, align 4
  %274 = load i32, i32* @LOG_FIP, align 4
  %275 = load i32, i32* @LOG_DISCOVERY, align 4
  %276 = or i32 %274, %275
  %277 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %278 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %281 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %272, i32 %273, i32 %276, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %279, i32 %282)
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %285 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %286 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba* %284, i32 %287)
  store %struct.lpfc_vport* %288, %struct.lpfc_vport** %7, align 8
  %289 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %290 = call %struct.lpfc_nodelist* @lpfc_sli4_perform_vport_cvl(%struct.lpfc_vport* %289)
  store %struct.lpfc_nodelist* %290, %struct.lpfc_nodelist** %8, align 8
  %291 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %292 = icmp ne %struct.lpfc_nodelist* %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %266
  br label %450

294:                                              ; preds = %266
  store i32 0, i32* %10, align 4
  %295 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %296 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %295)
  store %struct.lpfc_vport** %296, %struct.lpfc_vport*** %11, align 8
  %297 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %298 = icmp ne %struct.lpfc_vport** %297, null
  br i1 %298, label %299, label %345

299:                                              ; preds = %294
  store i32 0, i32* %12, align 4
  br label %300

300:                                              ; preds = %338, %299
  %301 = load i32, i32* %12, align 4
  %302 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %303 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 4
  %305 = icmp sle i32 %301, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %300
  %307 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %307, i64 %309
  %311 = load %struct.lpfc_vport*, %struct.lpfc_vport** %310, align 8
  %312 = icmp ne %struct.lpfc_vport* %311, null
  br label %313

313:                                              ; preds = %306, %300
  %314 = phi i1 [ false, %300 ], [ %312, %306 ]
  br i1 %314, label %315, label %341

315:                                              ; preds = %313
  %316 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %316, i64 %318
  %320 = load %struct.lpfc_vport*, %struct.lpfc_vport** %319, align 8
  %321 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @FC_VPORT_CVL_RCVD, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %337, label %326

326:                                              ; preds = %315
  %327 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %327, i64 %329
  %331 = load %struct.lpfc_vport*, %struct.lpfc_vport** %330, align 8
  %332 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @LPFC_FDISC, align 4
  %335 = icmp sgt i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %326
  store i32 1, i32* %10, align 4
  br label %341

337:                                              ; preds = %326, %315
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %12, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %12, align 4
  br label %300

341:                                              ; preds = %336, %313
  %342 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %343 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %344 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %342, %struct.lpfc_vport** %343)
  br label %345

345:                                              ; preds = %341, %294
  %346 = load i32, i32* %10, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %376

348:                                              ; preds = %345
  %349 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %350 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %349, i32 0, i32 2
  %351 = load i64, i64* @jiffies, align 8
  %352 = call i64 @msecs_to_jiffies(i32 1000)
  %353 = add nsw i64 %351, %352
  %354 = call i32 @mod_timer(i32* %350, i64 %353)
  %355 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %356 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %355)
  store %struct.Scsi_Host* %356, %struct.Scsi_Host** %9, align 8
  %357 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %358 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = call i32 @spin_lock_irq(i32* %359)
  %361 = load i32, i32* @NLP_DELAY_TMO, align 4
  %362 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %363 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 4
  %366 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %367 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @spin_unlock_irq(i32* %368)
  %370 = load i32, i32* @ELS_CMD_FDISC, align 4
  %371 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %372 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %371, i32 0, i32 0
  store i32 %370, i32* %372, align 4
  %373 = load i32, i32* @LPFC_FDISC, align 4
  %374 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %375 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %374, i32 0, i32 1
  store i32 %373, i32* %375, align 4
  br label %440

376:                                              ; preds = %345
  %377 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %378 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %377, i32 0, i32 5
  %379 = call i32 @spin_lock_irq(i32* %378)
  %380 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %381 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @FCF_DISCOVERY, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %376
  %388 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %389 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %388, i32 0, i32 5
  %390 = call i32 @spin_unlock_irq(i32* %389)
  br label %450

391:                                              ; preds = %376
  %392 = load i32, i32* @FCF_ACVL_DISC, align 4
  %393 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %394 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %393, i32 0, i32 6
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %392
  store i32 %397, i32* %395, align 4
  %398 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %399 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %398, i32 0, i32 5
  %400 = call i32 @spin_unlock_irq(i32* %399)
  %401 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %402 = load i32, i32* @KERN_INFO, align 4
  %403 = load i32, i32* @LOG_FIP, align 4
  %404 = load i32, i32* @LOG_DISCOVERY, align 4
  %405 = or i32 %403, %404
  %406 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %407 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %401, i32 %402, i32 %405, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %408)
  %410 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %411 = call i32 @lpfc_sli4_redisc_fcf_table(%struct.lpfc_hba* %410)
  store i32 %411, i32* %6, align 4
  %412 = load i32, i32* %6, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %436

414:                                              ; preds = %391
  %415 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %416 = load i32, i32* @KERN_ERR, align 4
  %417 = load i32, i32* @LOG_FIP, align 4
  %418 = load i32, i32* @LOG_DISCOVERY, align 4
  %419 = or i32 %417, %418
  %420 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %415, i32 %416, i32 %419, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  %421 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %422 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %421, i32 0, i32 5
  %423 = call i32 @spin_lock_irq(i32* %422)
  %424 = load i32, i32* @FCF_ACVL_DISC, align 4
  %425 = xor i32 %424, -1
  %426 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %427 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %426, i32 0, i32 6
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = and i32 %429, %425
  store i32 %430, i32* %428, align 4
  %431 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %432 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %431, i32 0, i32 5
  %433 = call i32 @spin_unlock_irq(i32* %432)
  %434 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %435 = call i32 @lpfc_retry_pport_discovery(%struct.lpfc_hba* %434)
  br label %439

436:                                              ; preds = %391
  %437 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %438 = call i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba* %437)
  br label %439

439:                                              ; preds = %436, %414
  br label %440

440:                                              ; preds = %439, %348
  br label %450

441:                                              ; preds = %2
  %442 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %443 = load i32, i32* @KERN_ERR, align 4
  %444 = load i32, i32* @LOG_SLI, align 4
  %445 = load i32, i32* %5, align 4
  %446 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %447 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %442, i32 %443, i32 %444, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %445, i32 %448)
  br label %450

450:                                              ; preds = %441, %440, %387, %293, %265, %208, %186, %147, %146, %113, %101, %89
  ret void
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_acqe_fip*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_redisc_fcf_table(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_fcf_dead_failthrough(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_perform_all_vport_cvl(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_sli4_perform_vport_cvl(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_retry_pport_discovery(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
