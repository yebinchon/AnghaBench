; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gid_ft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gid_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_14__, %struct.TYPE_15__, i64, i64, %struct.lpfc_vport* }
%struct.TYPE_14__ = type { %struct.lpfc_nodelist*, %struct.lpfc_iocbq* }
%struct.lpfc_nodelist = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.lpfc_vport = type { i64, i32, i32, i64, i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"GID_FT cmpl:     status:x%x/x%x rtry:%d\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"0216 Link event during NS query\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"0226 NS query failed due to link event\0A\00", align 1
@LPFC_MAX_NS_RETRY = common dso_local global i64 0, align 8
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@IOERR_NO_RESOURCES = common dso_local global i32 0, align 4
@SLI_CTNS_GID_FT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"0257 GID_FT Query error: 0x%x 0x%x\0A\00", align 1
@SLI_CT_RESPONSE_FS_ACC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"0208 NameServer Rsp Data: x%x\0A\00", align 1
@SLI_CT_RESPONSE_FS_RJT = common dso_local global i32 0, align 4
@SLI_CT_UNABLE_TO_PERFORM_REQ = common dso_local global i64 0, align 8
@SLI_CT_NO_FC4_TYPES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"0269 No NameServer Entries Data: x%x x%x x%x x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"GID_FT no entry  cmd:x%x rsn:x%x exp:x%x\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"0240 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"GID_FT rsp err1  cmd:x%x rsn:x%x exp:x%x\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"0241 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"GID_FT rsp err2  cmd:x%x rsn:x%x exp:x%x\00", align 1
@LPFC_DISC_AUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_cmd_gid_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_cmd_gid_ft(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_sli_ct_request*, align 8
  %13 = alloca %struct.lpfc_nodelist*, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %7, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %19 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %8, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %22, align 8
  store %struct.lpfc_nodelist* %23, %struct.lpfc_nodelist** %13, align 8
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  store %struct.lpfc_iocbq* %24, %struct.lpfc_iocbq** %27, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %31, %struct.lpfc_dmabuf** %11, align 8
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %35, %struct.lpfc_dmabuf** %10, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %36, i32 0, i32 1
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %9, align 8
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %39 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %50 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %38, i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %48, i64 %51)
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %54 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FC_UNLOADING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %3
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FC_RSCN_MODE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %68 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %67)
  br label %69

69:                                               ; preds = %66, %59
  br label %376

70:                                               ; preds = %3
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %72 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load i32, i32* @LOG_DISCOVERY, align 4
  %78 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FC_RSCN_MODE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %87 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %86)
  br label %88

88:                                               ; preds = %85, %74
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %90 = load i32, i32* @FC_VPORT_FAILED, align 4
  %91 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %89, i32 %90)
  br label %376

92:                                               ; preds = %70
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %94 = call i64 @lpfc_error_lost_link(%struct.TYPE_15__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %98 = load i32, i32* @KERN_INFO, align 4
  %99 = load i32, i32* @LOG_DISCOVERY, align 4
  %100 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %102 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FC_RSCN_MODE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %109 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %108)
  br label %110

110:                                              ; preds = %107, %96
  br label %376

111:                                              ; preds = %92
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %181

116:                                              ; preds = %111
  %117 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %118 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @LPFC_MAX_NS_RETRY, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %157

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 4
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %136 = sext i32 %135 to i64
  %137 = and i64 %134, %136
  %138 = load i32, i32* @IOERR_NO_RESOURCES, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ne i64 %137, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %128, %122
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %143 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %128
  %147 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %148 = load i32, i32* @SLI_CTNS_GID_FT, align 4
  %149 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %150 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %147, i32 %148, i64 %151, i32 0)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %376

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %116
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @FC_RSCN_MODE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %166 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %165)
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %169 = load i32, i32* @FC_VPORT_FAILED, align 4
  %170 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %168, i32 %169)
  %171 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %172 = load i32, i32* @KERN_ERR, align 4
  %173 = load i32, i32* @LOG_ELS, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %178 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %171, i32 %172, i32 %173, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %176, i64 %179)
  br label %334

181:                                              ; preds = %111
  %182 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %183 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %185, %struct.lpfc_sli_ct_request** %12, align 8
  %186 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %187 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* @SLI_CT_RESPONSE_FS_ACC, align 4
  %192 = call i64 @be16_to_cpu(i32 %191)
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %181
  %195 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %196 = load i32, i32* @KERN_INFO, align 4
  %197 = load i32, i32* @LOG_DISCOVERY, align 4
  %198 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %199 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %195, i32 %196, i32 %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  %202 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %203 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @lpfc_ns_rsp(%struct.lpfc_vport* %202, %struct.lpfc_dmabuf* %203, i64 %209)
  br label %333

211:                                              ; preds = %181
  %212 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %213 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* @SLI_CT_RESPONSE_FS_RJT, align 4
  %218 = call i64 @be16_to_cpu(i32 %217)
  %219 = icmp eq i64 %216, %218
  br i1 %219, label %220, label %299

220:                                              ; preds = %211
  %221 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %222 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @SLI_CT_UNABLE_TO_PERFORM_REQ, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %265

226:                                              ; preds = %220
  %227 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %228 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @SLI_CT_NO_FC4_TYPES, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %265

232:                                              ; preds = %226
  %233 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %234 = load i32, i32* @KERN_INFO, align 4
  %235 = load i32, i32* @LOG_DISCOVERY, align 4
  %236 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %237 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %242 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %245 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %248 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %233, i32 %234, i32 %235, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %240, i64 %243, i64 %246, i32 %249)
  %251 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %252 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %253 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %254 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %259 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %262 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %251, i32 %252, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %257, i64 %260, i64 %263)
  br label %298

265:                                              ; preds = %226, %220
  %266 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %267 = load i32, i32* @KERN_INFO, align 4
  %268 = load i32, i32* @LOG_DISCOVERY, align 4
  %269 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %270 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %275 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %278 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %281 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %266, i32 %267, i32 %268, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %273, i64 %276, i64 %279, i32 %282)
  %284 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %285 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %286 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %287 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %292 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %295 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %284, i32 %285, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %290, i64 %293, i64 %296)
  br label %298

298:                                              ; preds = %265, %232
  br label %332

299:                                              ; preds = %211
  %300 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %301 = load i32, i32* @KERN_ERR, align 4
  %302 = load i32, i32* @LOG_DISCOVERY, align 4
  %303 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %304 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %309 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %312 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %315 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %300, i32 %301, i32 %302, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %307, i64 %310, i64 %313, i32 %316)
  %318 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %319 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %320 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %321 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %326 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %329 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %318, i32 %319, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %324, i64 %327, i64 %330)
  br label %332

332:                                              ; preds = %299, %298
  br label %333

333:                                              ; preds = %332, %194
  br label %334

334:                                              ; preds = %333, %167
  %335 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %336 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %375

339:                                              ; preds = %334
  %340 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %341 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @LPFC_DISC_AUTH, align 8
  %344 = icmp sge i64 %342, %343
  br i1 %344, label %345, label %372

345:                                              ; preds = %339
  %346 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %347 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @FC_RSCN_MODE, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %368

352:                                              ; preds = %345
  %353 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %354 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %353)
  %355 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %356 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @spin_lock_irq(i32 %357)
  %359 = load i32, i32* @FC_RSCN_MODE, align 4
  %360 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %361 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %359
  store i32 %363, i32* %361, align 4
  %364 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %365 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @spin_unlock_irq(i32 %366)
  br label %371

368:                                              ; preds = %345
  %369 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %370 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %369)
  br label %371

371:                                              ; preds = %368, %352
  br label %372

372:                                              ; preds = %371, %339
  %373 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %374 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %373)
  br label %375

375:                                              ; preds = %372, %334
  br label %376

376:                                              ; preds = %375, %155, %110, %88, %69
  %377 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %378 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %379 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 0
  store %struct.lpfc_nodelist* %377, %struct.lpfc_nodelist** %380, align 8
  %381 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %382 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %383 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %381, %struct.lpfc_iocbq* %382)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @lpfc_els_flush_rscn(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @lpfc_error_lost_link(%struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i64, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_ns_rsp(%struct.lpfc_vport*, %struct.lpfc_dmabuf*, i64) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
