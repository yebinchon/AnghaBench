; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_link_diag_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_link_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, i32, {}*, %struct.TYPE_24__*, %struct.TYPE_28__*, %struct.Scsi_Host* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__, %struct.lpfc_mbx_run_link_diag_test }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.lpfc_mbx_run_link_diag_test = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.sli4_link_diag = type { i32, i32, i32, i32, i32 }
%union.lpfc_sli4_cfg_shdr = type { i32 }
%struct.diag_status = type { i32, i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"3013 Received LINK DIAG TEST request  size:%d below the minimum size:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_link_num = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_link_type = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_test_id = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_loops = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_test_ver = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_err_act = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_status = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_add_status = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"3010 Run link diag test mailbox failed with mbx_status x%x status x%x, add_status x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"3012 Received Run link diag test reply below minimum size (%d): reply_len:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_sli4_bsg_link_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_link_diag_test(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.sli4_link_diag*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.lpfc_mbx_run_link_diag_test*, align 8
  %12 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.diag_status*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %19 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %18, i32 0, i32 5
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %19, align 8
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %3, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = icmp ne %struct.Scsi_Host* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %17, align 4
  br label %279

26:                                               ; preds = %1
  %27 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %28 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %27, i32 0, i32 5
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %28, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %32, %struct.lpfc_vport** %4, align 8
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %34 = icmp ne %struct.lpfc_vport* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %17, align 4
  br label %279

38:                                               ; preds = %26
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 0
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %40, align 8
  store %struct.lpfc_hba* %41, %struct.lpfc_hba** %5, align 8
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %43 = icmp ne %struct.lpfc_hba* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %17, align 4
  br label %279

47:                                               ; preds = %38
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LPFC_SLI_REV4, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %17, align 4
  br label %279

56:                                               ; preds = %47
  %57 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 1
  %61 = call i64 @bf_get(i32 %57, i32* %60)
  %62 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %17, align 4
  br label %279

67:                                               ; preds = %56
  %68 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %69 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %71, 24
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %75 = load i32, i32* @KERN_WARNING, align 4
  %76 = load i32, i32* @LOG_LIBDFC, align 4
  %77 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %78 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %79, i32 24)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %17, align 4
  br label %279

83:                                               ; preds = %67
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %85 = call i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba* %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %279

89:                                               ; preds = %83
  %90 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %91 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %90, i32 0, i32 4
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.sli4_link_diag*
  store %struct.sli4_link_diag* %97, %struct.sli4_link_diag** %7, align 8
  %98 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %7, align 8
  %99 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 100
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %10, align 8
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %105 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %104, i32 1)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  br label %279

109:                                              ; preds = %89
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.TYPE_25__* @mempool_alloc(i32 %112, i32 %113)
  store %struct.TYPE_25__* %114, %struct.TYPE_25__** %6, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = icmp ne %struct.TYPE_25__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %17, align 4
  br label %265

120:                                              ; preds = %109
  store i8* null, i8** %8, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %123 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %124 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %127 = call i8* @lpfc_sli4_config(%struct.lpfc_hba* %121, %struct.TYPE_25__* %122, i32 %123, i32 %124, i8* %125, i32 %126)
  store i8* %127, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = icmp ne i8* %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %120
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %17, align 4
  br label %265

134:                                              ; preds = %120
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 1
  store %struct.lpfc_mbx_run_link_diag_test* %139, %struct.lpfc_mbx_run_link_diag_test** %11, align 8
  %140 = load i32, i32* @lpfc_mbx_run_diag_test_link_num, align 4
  %141 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %11, align 8
  %142 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 0
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @bf_set(i32 %140, i32* %143, i32 %148)
  %150 = load i32, i32* @lpfc_mbx_run_diag_test_link_type, align 4
  %151 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %11, align 8
  %152 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @bf_set(i32 %150, i32* %153, i32 %158)
  %160 = load i32, i32* @lpfc_mbx_run_diag_test_test_id, align 4
  %161 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %11, align 8
  %162 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 0
  %164 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %7, align 8
  %165 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @bf_set(i32 %160, i32* %163, i32 %166)
  %168 = load i32, i32* @lpfc_mbx_run_diag_test_loops, align 4
  %169 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %11, align 8
  %170 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 0
  %172 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %7, align 8
  %173 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @bf_set(i32 %168, i32* %171, i32 %174)
  %176 = load i32, i32* @lpfc_mbx_run_diag_test_test_ver, align 4
  %177 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %11, align 8
  %178 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %7, align 8
  %181 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @bf_set(i32 %176, i32* %179, i32 %182)
  %184 = load i32, i32* @lpfc_mbx_run_diag_test_err_act, align 4
  %185 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %11, align 8
  %186 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  %188 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %7, align 8
  %189 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @bf_set(i32 %184, i32* %187, i32 %190)
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %194 = load i32, i32* @MBX_POLL, align 4
  %195 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %192, %struct.TYPE_25__* %193, i32 %194)
  store i32 %195, i32* %16, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 0
  %203 = bitcast i32* %202 to %union.lpfc_sli4_cfg_shdr*
  store %union.lpfc_sli4_cfg_shdr* %203, %union.lpfc_sli4_cfg_shdr** %12, align 8
  %204 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %205 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %12, align 8
  %206 = bitcast %union.lpfc_sli4_cfg_shdr* %205 to i32*
  %207 = call i64 @bf_get(i32 %204, i32* %206)
  %208 = inttoptr i64 %207 to i8*
  store i8* %208, i8** %13, align 8
  %209 = load i32, i32* @lpfc_mbox_hdr_add_status, align 4
  %210 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %12, align 8
  %211 = bitcast %union.lpfc_sli4_cfg_shdr* %210 to i32*
  %212 = call i64 @bf_get(i32 %209, i32* %211)
  %213 = inttoptr i64 %212 to i8*
  store i8* %213, i8** %14, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %134
  %217 = load i8*, i8** %14, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219, %216, %134
  %223 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %224 = load i32, i32* @KERN_ERR, align 4
  %225 = load i32, i32* @LOG_LIBDFC, align 4
  %226 = load i32, i32* %16, align 4
  %227 = load i8*, i8** %13, align 8
  %228 = ptrtoint i8* %227 to i32
  %229 = load i8*, i8** %14, align 8
  %230 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %223, i32 %224, i32 %225, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %226, i32 %228, i8* %229)
  br label %231

231:                                              ; preds = %222, %219
  %232 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %233 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %232, i32 0, i32 3
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to %struct.diag_status*
  store %struct.diag_status* %239, %struct.diag_status** %15, align 8
  %240 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %241 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = icmp ult i64 %243, 28
  br i1 %244, label %245, label %255

245:                                              ; preds = %231
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %247 = load i32, i32* @KERN_WARNING, align 4
  %248 = load i32, i32* @LOG_LIBDFC, align 4
  %249 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %250 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 28, i32 %251)
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %17, align 4
  br label %279

255:                                              ; preds = %231
  %256 = load i32, i32* %16, align 4
  %257 = load %struct.diag_status*, %struct.diag_status** %15, align 8
  %258 = getelementptr inbounds %struct.diag_status, %struct.diag_status* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = load %struct.diag_status*, %struct.diag_status** %15, align 8
  %261 = getelementptr inbounds %struct.diag_status, %struct.diag_status* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load i8*, i8** %14, align 8
  %263 = load %struct.diag_status*, %struct.diag_status** %15, align 8
  %264 = getelementptr inbounds %struct.diag_status, %struct.diag_status* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %255, %131, %117
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %267 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %266, i32 0)
  store i32 %267, i32* %17, align 4
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %269 = icmp ne %struct.TYPE_25__* %268, null
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %272 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %273 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @mempool_free(%struct.TYPE_25__* %271, i32 %274)
  br label %276

276:                                              ; preds = %270, %265
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %278 = call i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba* %277)
  br label %279

279:                                              ; preds = %276, %245, %108, %88, %73, %64, %53, %44, %35, %23
  %280 = load i32, i32* %17, align 4
  %281 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %282 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %281, i32 0, i32 3
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 0
  store i32 %280, i32* %284, align 8
  %285 = load i32, i32* %17, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %279
  %288 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %289 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %288, i32 0, i32 2
  %290 = bitcast {}** %289 to i32 (%struct.fc_bsg_job*)**
  %291 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %290, align 8
  %292 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %293 = call i32 %291(%struct.fc_bsg_job* %292)
  br label %294

294:                                              ; preds = %287, %279
  %295 = load i32, i32* %17, align 4
  ret i32 %295
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba*, i32) #1

declare dso_local %struct.TYPE_25__* @mempool_alloc(i32, i32) #1

declare dso_local i8* @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_25__*, i32, i32, i8*, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
