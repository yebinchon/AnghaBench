; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_set_sas_protocol_timer_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_set_sas_protocol_timer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.set_ctrl_cfg_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OPC_INB_SET_CONTROLLER_CONFIG = common dso_local global i32 0, align 4
@SAS_PROTOCOL_TIMER_CONFIG_PAGE = common dso_local global i32 0, align 4
@STP_MCT_TMO = common dso_local global i32 0, align 4
@SSP_MCT_TMO = common dso_local global i32 0, align 4
@SAS_MAX_OPEN_TIME = common dso_local global i32 0, align 4
@SMP_MAX_CONN_TIMER = common dso_local global i32 0, align 4
@STP_FRM_TIMER = common dso_local global i32 0, align 4
@STP_IDLE_TIME = common dso_local global i32 0, align 4
@SAS_MFD = common dso_local global i32 0, align 4
@SAS_OPNRJT_RTRY_INTVL = common dso_local global i32 0, align 4
@SAS_DOPNRJT_RTRY_TMO = common dso_local global i32 0, align 4
@SAS_COPNRJT_RTRY_TMO = common dso_local global i32 0, align 4
@SAS_DOPNRJT_RTRY_THR = common dso_local global i32 0, align 4
@SAS_COPNRJT_RTRY_THR = common dso_local global i32 0, align 4
@SAS_MAX_AIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SASConfigPage.pageCode 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SASConfigPage.MST_MSI  0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"SASConfigPage.STP_SSP_MCT_TMO  0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"SASConfigPage.STP_FRM_TMO  0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"SASConfigPage.STP_IDLE_TMO  0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"SASConfigPage.OPNRJT_RTRY_INTVL  0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"SASConfigPage.Data_Cmd_OPNRJT_RTRY_TMO  0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"SASConfigPage.Data_Cmd_OPNRJT_RTRY_THR  0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"SASConfigPage.MAX_AIP  0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm80xx_set_sas_protocol_timer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_set_sas_protocol_timer_config(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.set_ctrl_cfg_req, align 4
  %5 = alloca %struct.inbound_queue_table*, align 8
  %6 = alloca %struct.set_ctrl_cfg_req, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %10 = load i32, i32* @OPC_INB_SET_CONTROLLER_CONFIG, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @memset(%struct.set_ctrl_cfg_req* %4, i32 0, i32 44)
  %12 = call i32 @memset(%struct.set_ctrl_cfg_req* %6, i32 0, i32 44)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %14 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %13, i32* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %119

18:                                               ; preds = %1
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %19, i32 0, i32 0
  %21 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %20, align 8
  %22 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %21, i64 0
  store %struct.inbound_queue_table* %22, %struct.inbound_queue_table** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 10
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @SAS_PROTOCOL_TIMER_CONFIG_PAGE, align 4
  %27 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 1
  store i32 98304, i32* %28, align 4
  %29 = load i32, i32* @STP_MCT_TMO, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* @SSP_MCT_TMO, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @SAS_MAX_OPEN_TIME, align 4
  %35 = shl i32 %34, 24
  %36 = load i32, i32* @SMP_MAX_CONN_TIMER, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  %39 = load i32, i32* @STP_FRM_TIMER, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @STP_IDLE_TIME, align 4
  %43 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 67108863
  br i1 %46, label %47, label %49

47:                                               ; preds = %18
  %48 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 4
  store i32 67108863, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %18
  %50 = load i32, i32* @SAS_MFD, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* @SAS_OPNRJT_RTRY_INTVL, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @SAS_DOPNRJT_RTRY_TMO, align 4
  %56 = shl i32 %55, 16
  %57 = load i32, i32* @SAS_COPNRJT_RTRY_TMO, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @SAS_DOPNRJT_RTRY_THR, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* @SAS_COPNRJT_RTRY_THR, align 4
  %63 = or i32 %61, %62
  %64 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 7
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @SAS_MAX_AIP, align 4
  %66 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %68 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %67, i32 %70)
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %73 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %72, i32 %75)
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %78 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %77, i32 %80)
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %83 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %82, i32 %85)
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %88 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %87, i32 %90)
  %92 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %93 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pm8001_printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %92, i32 %95)
  %97 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %98 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pm8001_printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %97, i32 %100)
  %102 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %103 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pm8001_printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %102, i32 %105)
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %108 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %6, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %107, i32 %110)
  %112 = getelementptr inbounds %struct.set_ctrl_cfg_req, %struct.set_ctrl_cfg_req* %4, i32 0, i32 9
  %113 = call i32 @memcpy(i32* %112, %struct.set_ctrl_cfg_req* %6, i32 44)
  %114 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %115 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %114, %struct.inbound_queue_table* %115, i32 %116, %struct.set_ctrl_cfg_req* %4, i32 0)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %49, %17
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @memset(%struct.set_ctrl_cfg_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.set_ctrl_cfg_req*, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.set_ctrl_cfg_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
