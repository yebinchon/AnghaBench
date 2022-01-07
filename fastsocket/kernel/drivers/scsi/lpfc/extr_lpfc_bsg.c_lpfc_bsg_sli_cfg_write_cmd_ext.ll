; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_sli_cfg_write_cmd_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_sli_cfg_write_cmd_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_30__ }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.lpfc_dmabuf*, i32, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_24__*, %struct.bsg_job_data*, %struct.TYPE_29__* }
%struct.TYPE_24__ = type { i64 }
%struct.bsg_job_data = type { %struct.TYPE_22__, %struct.fc_bsg_job*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { %struct.bsg_job_data*, i32, i32, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_25__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.dfc_mbox_req = type { i32, i32 }
%struct.lpfc_sli_config_mbox = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__, %struct.TYPE_32__ }
%struct.TYPE_33__ = type { i32, i32* }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32 }

@SLI_CONFIG_NOT_HANDLED = common dso_local global i32 0, align 4
@nemb_mse = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_mse_cnt = common dso_local global i32 0, align 4
@LPFC_MBX_SLI_CONFIG_MAX_MSE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"2953 Failed SLI_CONFIG(mse) wr, ext_buf_cnt(%d) out of range(%d)\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"2949 Handled SLI_CONFIG(mse) wr, ext_buf_cnt:%d\0A\00", align 1
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@LPFC_MBX_SLI_CONFIG_MAX_HBD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"2954 Failed SLI_CONFIG(hbd) wr, ext_buf_cnt(%d) out of range(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"2950 Handled SLI_CONFIG(hbd) wr, ext_buf_cnt:%d\0A\00", align 1
@mbox_wr = common dso_local global i32 0, align 4
@dma_mbox = common dso_local global i32 0, align 4
@sta_pre_addr = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@sta_pos_addr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"2951 SLI_CONFIG(mse), buf[%d]-length:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"2952 SLI_CONFIG(hbd), buf[%d]-length:%d\0A\00", align 1
@lpfc_mbox_sli_config_ecmn_hbd_len = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4
@lpfc_bsg_issue_write_mbox_ext_cmpl = common dso_local global i32 0, align 4
@TYPE_MBOX = common dso_local global i32 0, align 4
@LPFC_BSG_MBOX_PORT = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"2955 Issued SLI_CONFIG ext-buffer maibox command, rc:x%x\0A\00", align 1
@SLI_CONFIG_HANDLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [67 x i8] c"2956 Failed to issue SLI_CONFIG ext-buffer maibox command, rc:x%x\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.fc_bsg_job*, i32, %struct.lpfc_dmabuf*)* @lpfc_bsg_sli_cfg_write_cmd_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_sli_cfg_write_cmd_ext(%struct.lpfc_hba* %0, %struct.fc_bsg_job* %1, i32 %2, %struct.lpfc_dmabuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.fc_bsg_job*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.dfc_mbox_req*, align 8
  %11 = alloca %struct.lpfc_sli_config_mbox*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bsg_job_data*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.fc_bsg_job* %1, %struct.fc_bsg_job** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lpfc_dmabuf* %3, %struct.lpfc_dmabuf** %9, align 8
  store %struct.bsg_job_data* null, %struct.bsg_job_data** %13, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %14, align 8
  %19 = load i32, i32* @SLI_CONFIG_NOT_HANDLED, align 4
  store i32 %19, i32* %17, align 4
  %20 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %21 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %20, i32 0, i32 3
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.dfc_mbox_req*
  store %struct.dfc_mbox_req* %27, %struct.dfc_mbox_req** %10, align 8
  %28 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %29 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.lpfc_sli_config_mbox*
  store %struct.lpfc_sli_config_mbox* %31, %struct.lpfc_sli_config_mbox** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @nemb_mse, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %4
  %36 = load i32, i32* @lpfc_mbox_hdr_mse_cnt, align 4
  %37 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %38 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 1
  %41 = call i32 @bsg_bf_get(i32 %36, i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_MSE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @LOG_LIBDFC, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_MSE, align 4
  %51 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %318

54:                                               ; preds = %35
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %56 = load i32, i32* @KERN_INFO, align 4
  %57 = load i32, i32* @LOG_LIBDFC, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %95

60:                                               ; preds = %4
  %61 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = call i64 @bf_get(i32 %61, i32* %64)
  %66 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %318

71:                                               ; preds = %60
  %72 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %73 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_HBD, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %82 = load i32, i32* @KERN_ERR, align 4
  %83 = load i32, i32* @LOG_LIBDFC, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_HBD, align 4
  %86 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @ERANGE, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %318

89:                                               ; preds = %71
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %91 = load i32, i32* @KERN_INFO, align 4
  %92 = load i32, i32* @LOG_LIBDFC, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %54
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @mbox_wr, align 4
  %99 = load i32, i32* @dma_mbox, align 4
  %100 = load i32, i32* @sta_pre_addr, align 4
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %96, i32 %97, i32 %98, i32 %99, i32 %100, %struct.lpfc_dmabuf* %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load i32, i32* @EPERM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %318

109:                                              ; preds = %95
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %113 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %114 = call i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba* %110, i32 %111, i32 0, %struct.lpfc_dmabuf* %112, %struct.lpfc_dmabuf* %113)
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @mbox_wr, align 4
  %118 = load i32, i32* @dma_mbox, align 4
  %119 = load i32, i32* @sta_pos_addr, align 4
  %120 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %115, i32 %116, i32 %117, i32 %118, i32 %119, %struct.lpfc_dmabuf* %120, i32 %121)
  store i32 1, i32* %18, align 4
  br label %123

123:                                              ; preds = %164, %109
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %167

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @nemb_mse, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %133 = load i32, i32* @KERN_INFO, align 4
  %134 = load i32, i32* @LOG_LIBDFC, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %137 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %145)
  br label %163

147:                                              ; preds = %127
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %149 = load i32, i32* @KERN_INFO, align 4
  %150 = load i32, i32* @LOG_LIBDFC, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @lpfc_mbox_sli_config_ecmn_hbd_len, align 4
  %153 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %11, align 8
  %154 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = call i32 @bsg_bf_get(i32 %152, i32* %160)
  %162 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %161)
  br label %163

163:                                              ; preds = %147, %131
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %18, align 4
  br label %123

167:                                              ; preds = %123
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load i32, i32* @mbox_wr, align 4
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 6
  store i32 %172, i32* %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %10, align 8
  %181 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 5
  store i32 %182, i32* %185, align 4
  %186 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %10, align 8
  %187 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %190 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 4
  store i32 %188, i32* %191, align 8
  %192 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 3
  store %struct.lpfc_dmabuf* %192, %struct.lpfc_dmabuf** %195, align 8
  %196 = load i32, i32* %12, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %294

198:                                              ; preds = %167
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call %struct.bsg_job_data* @kmalloc(i32 32, i32 %199)
  store %struct.bsg_job_data* %200, %struct.bsg_job_data** %13, align 8
  %201 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %202 = icmp ne %struct.bsg_job_data* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %17, align 4
  br label %305

206:                                              ; preds = %198
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @GFP_KERNEL, align 4
  %211 = call %struct.TYPE_26__* @mempool_alloc(i32 %209, i32 %210)
  store %struct.TYPE_26__* %211, %struct.TYPE_26__** %14, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %213 = icmp ne %struct.TYPE_26__* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %206
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %17, align 4
  br label %305

217:                                              ; preds = %206
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %219 = call i32 @memset(%struct.TYPE_26__* %218, i32 0, i32 24)
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %221, i32 0, i32 0
  store %struct.TYPE_25__* %222, %struct.TYPE_25__** %15, align 8
  %223 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %224 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to i32*
  store i32* %226, i32** %16, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %228 = load i32*, i32** %16, align 8
  %229 = call i32 @memcpy(%struct.TYPE_25__* %227, i32* %228, i32 4)
  %230 = load i32, i32* @OWN_HOST, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %234 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @lpfc_bsg_issue_write_mbox_ext_cmpl, align 4
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 8
  %241 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 0
  store %struct.bsg_job_data* %241, %struct.bsg_job_data** %243, align 8
  %244 = load i32, i32* @TYPE_MBOX, align 4
  %245 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %246 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %248 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %249 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %248, i32 0, i32 1
  store %struct.fc_bsg_job* %247, %struct.fc_bsg_job** %249, align 8
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %251 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %252 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  store %struct.TYPE_26__* %250, %struct.TYPE_26__** %254, align 8
  %255 = load i32*, i32** %16, align 8
  %256 = bitcast i32* %255 to %struct.TYPE_25__*
  %257 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %258 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  store %struct.TYPE_25__* %256, %struct.TYPE_25__** %260, align 8
  %261 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %262 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %263 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %262, i32 0, i32 2
  store %struct.bsg_job_data* %261, %struct.bsg_job_data** %263, align 8
  %264 = load i32, i32* @LPFC_BSG_MBOX_PORT, align 4
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %266 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 2
  store i32 %264, i32* %267, align 8
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %270 = load i32, i32* @MBX_NOWAIT, align 4
  %271 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %268, %struct.TYPE_26__* %269, i32 %270)
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* @MBX_SUCCESS, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %279, label %275

275:                                              ; preds = %217
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* @MBX_BUSY, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %275, %217
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %281 = load i32, i32* @KERN_INFO, align 4
  %282 = load i32, i32* @LOG_LIBDFC, align 4
  %283 = load i32, i32* %17, align 4
  %284 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %280, i32 %281, i32 %282, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %285, i32* %5, align 4
  br label %318

286:                                              ; preds = %275
  %287 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %288 = load i32, i32* @KERN_ERR, align 4
  %289 = load i32, i32* @LOG_LIBDFC, align 4
  %290 = load i32, i32* %17, align 4
  %291 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %287, i32 %288, i32 %289, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* @EPIPE, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %17, align 4
  br label %305

294:                                              ; preds = %167
  %295 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %296 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %295, i32 0, i32 1
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 0
  store i64 0, i64* %298, align 8
  %299 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %300 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %299, i32 0, i32 0
  %301 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %300, align 8
  %302 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %303 = call i32 %301(%struct.fc_bsg_job* %302)
  %304 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %304, i32* %5, align 4
  br label %318

305:                                              ; preds = %286, %214, %203
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %307 = icmp ne %struct.TYPE_26__* %306, null
  br i1 %307, label %308, label %314

308:                                              ; preds = %305
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %311 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @mempool_free(%struct.TYPE_26__* %309, i32 %312)
  br label %314

314:                                              ; preds = %308, %305
  %315 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %316 = call i32 @kfree(%struct.bsg_job_data* %315)
  %317 = load i32, i32* %17, align 4
  store i32 %317, i32* %5, align 4
  br label %318

318:                                              ; preds = %314, %294, %279, %106, %80, %68, %45
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

declare dso_local i32 @bsg_bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba*, i32, i32, i32, i32, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba*, i32, i32, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*) #1

declare dso_local %struct.bsg_job_data* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_26__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
