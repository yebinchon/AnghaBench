; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gff_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gff_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, i64, i64, %struct.TYPE_14__, %struct.lpfc_vport* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.lpfc_vport = type { i32, i64, i64, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"GFF_ID cmpl:     status:x%x/x%x did:x%x\00", align 1
@IOSTAT_SUCCESS = common dso_local global i32 0, align 4
@FCP_TYPE_FEATURE_OFFSET = common dso_local global i64 0, align 8
@SLI_CT_RESPONSE_FS_ACC = common dso_local global i32 0, align 4
@FC4_FEATURE_INIT = common dso_local global i32 0, align 4
@FC4_FEATURE_TARGET = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"0270 Skip x%x GFF NameServer Rsp Data: (init) x%x x%x\0A\00", align 1
@LPFC_MAX_NS_RETRY = common dso_local global i64 0, align 8
@IOSTAT_LOCAL_REJECT = common dso_local global i32 0, align 4
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@SLI_CTNS_GFF_ID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"0267 NameServer GFF Rsp x%x Error (%d %d) Data: x%x x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"0242 Process x%x GFF NameServer Rsp Data: x%x x%x x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"0243 Skip x%x GFF NameServer Rsp Data: x%x x%x\0A\00", align 1
@LPFC_DISC_AUTH = common dso_local global i64 0, align 8
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_cmd_gff_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_cmd_gff_id(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_sli_ct_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %19, align 8
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %7, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %22 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %21)
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %8, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 3
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %28, %struct.lpfc_dmabuf** %10, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %32, %struct.lpfc_dmabuf** %11, align 8
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.lpfc_sli_ct_request*
  %37 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %44 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %43, i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %53, i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IOSTAT_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %3
  %62 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %63 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %65, %struct.lpfc_sli_ct_request** %12, align 8
  %66 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %67 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @FCP_TYPE_FEATURE_OFFSET, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  %74 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %75 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @SLI_CT_RESPONSE_FS_ACC, align 4
  %80 = call i64 @be16_to_cpu(i32 %79)
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %61
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @FC4_FEATURE_INIT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @FC4_FEATURE_TARGET, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %94 = load i32, i32* @KERN_INFO, align 4
  %95 = load i32, i32* @LOG_DISCOVERY, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %99 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97, i32 %100)
  br label %216

102:                                              ; preds = %87, %82
  br label %103

103:                                              ; preds = %102, %61
  br label %178

104:                                              ; preds = %3
  %105 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %106 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LPFC_MAX_NS_RETRY, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %104
  store i32 1, i32* %15, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %110
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %124 = and i32 %122, %123
  switch i32 %124, label %127 [
    i32 130, label %125
    i32 131, label %126
    i32 129, label %126
    i32 128, label %126
  ]

125:                                              ; preds = %116
  br label %132

126:                                              ; preds = %116, %116, %116
  store i32 0, i32* %15, align 4
  br label %132

127:                                              ; preds = %116
  %128 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %129 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %127, %126, %125
  br label %138

133:                                              ; preds = %110
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %135 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %133, %132
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %143 = load i32, i32* @SLI_CTNS_GFF_ID, align 4
  %144 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %145 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %142, i32 %143, i64 %146, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %153 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %154 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %152, %struct.lpfc_iocbq* %153)
  br label %271

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %138
  br label %157

157:                                              ; preds = %156, %104
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %159 = load i32, i32* @KERN_ERR, align 4
  %160 = load i32, i32* @LOG_DISCOVERY, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %172 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %175 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %158, i32 %159, i32 %160, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %164, i32 %170, i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %157, %103
  %179 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport* %179, i32 %180)
  store %struct.lpfc_nodelist* %181, %struct.lpfc_nodelist** %17, align 8
  %182 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %183 = icmp ne %struct.lpfc_nodelist* %182, null
  br i1 %183, label %184, label %203

184:                                              ; preds = %178
  %185 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %186 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %184
  %189 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %190 = load i32, i32* @KERN_INFO, align 4
  %191 = load i32, i32* @LOG_DISCOVERY, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %194 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %197 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %200 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %192, i32 %195, i32 %198, i32 %201)
  br label %215

203:                                              ; preds = %184, %178
  %204 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %205 = load i32, i32* @KERN_INFO, align 4
  %206 = load i32, i32* @LOG_DISCOVERY, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %209 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %212 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %204, i32 %205, i32 %206, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %207, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %203, %188
  br label %216

216:                                              ; preds = %215, %92
  %217 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %218 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %223 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, -1
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %221, %216
  %227 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %228 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %267

231:                                              ; preds = %226
  %232 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %233 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @LPFC_DISC_AUTH, align 8
  %236 = icmp sge i64 %234, %235
  br i1 %236, label %237, label %264

237:                                              ; preds = %231
  %238 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %239 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @FC_RSCN_MODE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %237
  %245 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %246 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %245)
  %247 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %248 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @spin_lock_irq(i32 %249)
  %251 = load i32, i32* @FC_RSCN_MODE, align 4
  %252 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %253 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %257 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @spin_unlock_irq(i32 %258)
  br label %263

260:                                              ; preds = %237
  %261 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %262 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %261)
  br label %263

263:                                              ; preds = %260, %244
  br label %264

264:                                              ; preds = %263, %231
  %265 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %266 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %265)
  br label %267

267:                                              ; preds = %264, %226
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %269 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %270 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %268, %struct.lpfc_iocbq* %269)
  br label %271

271:                                              ; preds = %267, %151
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i64, i32) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_flush_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
