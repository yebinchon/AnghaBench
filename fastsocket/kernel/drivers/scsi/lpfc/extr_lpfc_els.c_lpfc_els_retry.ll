; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_17__, %struct.TYPE_16__, i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_iocbq = type { i32, i32, i64, i64, %struct.TYPE_19__, %struct.lpfc_vport* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.lpfc_vport = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_nodelist = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.ls_rjt = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@lpfc_max_els_tries = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Retry ELS:       wd7:x%x wd4:x%x did:x%x\00", align 1
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_HORNET = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"0124 Retry illegal cmd x%x retry:x%x delay:x%x\0A\00", align 1
@NameServer_DID = common dso_local global i64 0, align 8
@RJT_UNAVAIL_TEMP = common dso_local global i32 0, align 4
@LSEXP_CMD_IN_PROGRESS = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LSEXP_OUT_OF_RESOURCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"0125 FDISC Failed (x%x). Fabric out of resources\0A\00", align 1
@FC_VPORT_NO_FABRIC_RSCS = common dso_local global i32 0, align 4
@LSEXP_PORT_LOGIN_REQ = common dso_local global i32 0, align 4
@LSEXP_INVALID_PNAME = common dso_local global i32 0, align 4
@LSEXP_INVALID_NPORT_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"0122 FDISC Failed (x%x). Fabric Detected Bad WWN\0A\00", align 1
@FC_VPORT_FABRIC_REJ_WWN = common dso_local global i32 0, align 4
@FDMI_DID = common dso_local global i64 0, align 8
@FC_UNLOADING = common dso_local global i32 0, align 4
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"2849 Stop retry ELS command x%x to remote NPORT x%x, Data: x%x x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"0107 Retry ELS command x%x to remote NPORT x%x Data: x%x x%x\0A\00", align 1
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_STE_PRLI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_ADISC_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_LOGO_ISSUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [83 x i8] c"0137 No retry ELS command x%x to remote NPORT x%x: Out of Resources: Error:x%x/%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"0108 No retry ELS command x%x to remote NPORT x%x Retried:%d Error:x%x/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_els_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_retry(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.lpfc_nodelist*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ls_rjt, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 5
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %22, align 8
  store %struct.lpfc_vport* %23, %struct.lpfc_vport** %8, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %25 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %24)
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %9, align 8
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 4
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %10, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %31, %struct.lpfc_nodelist** %11, align 8
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %35, %struct.lpfc_dmabuf** %12, align 8
  store i32 0, i32* %15, align 4
  %36 = load i32, i32* @lpfc_max_els_tries, align 4
  store i32 %36, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %37 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %38 = icmp ne %struct.lpfc_dmabuf* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %3
  %40 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %41 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %46 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64* %48, i64** %13, align 8
  %49 = load i64*, i64** %13, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %13, align 8
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %19, align 8
  br label %52

52:                                               ; preds = %44, %39, %3
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %54 = icmp ne %struct.lpfc_nodelist* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %57 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %20, align 8
  br label %83

63:                                               ; preds = %55, %52
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %20, align 8
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %70 = load i64, i64* %20, align 8
  %71 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %69, i64 %70)
  store %struct.lpfc_nodelist* %71, %struct.lpfc_nodelist** %11, align 8
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %73 = icmp ne %struct.lpfc_nodelist* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %76 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74, %63
  %79 = load i64, i64* %19, align 8
  %80 = icmp ne i64 %79, 149
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %702

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %59
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %85 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %87 = bitcast %struct.TYPE_19__* %86 to i64*
  %88 = getelementptr inbounds i64, i64* %87, i64 7
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %97 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %84, i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %89, i32 %95, i64 %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %359 [
    i32 138, label %103
    i32 132, label %104
    i32 136, label %118
    i32 133, label %199
    i32 139, label %199
    i32 134, label %211
    i32 140, label %211
    i32 135, label %212
    i32 137, label %358
    i32 141, label %358
  ]

103:                                              ; preds = %83
  br label %360

104:                                              ; preds = %83
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @LPFC_SLI_REV4, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @lpfc_set_rrq_active(%struct.lpfc_hba* %111, %struct.lpfc_nodelist* %112, i32 %115, i32 0, i32 0)
  br label %117

117:                                              ; preds = %110, %104
  br label %360

118:                                              ; preds = %83
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %126 = and i32 %124, %125
  switch i32 %126, label %198 [
    i32 144, label %127
    i32 147, label %165
    i32 143, label %181
    i32 146, label %188
    i32 142, label %189
    i32 145, label %189
  ]

127:                                              ; preds = %118
  %128 = load i64, i64* %19, align 8
  %129 = icmp eq i64 %128, 151
  br i1 %129, label %130, label %155

130:                                              ; preds = %127
  %131 = load i32, i32* @PCI_DEVICE_ID_HORNET, align 4
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 6
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %131, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %130
  %139 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 5
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 0, i32* %149, align 4
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %138, %130
  br label %155

155:                                              ; preds = %154, %127
  %156 = load i64, i64* %19, align 8
  %157 = icmp eq i64 %156, 149
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %160 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 1000, i32* %17, align 4
  br label %164

164:                                              ; preds = %163, %158, %155
  store i32 1, i32* %15, align 4
  br label %198

165:                                              ; preds = %118
  %166 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %167 = load i32, i32* @KERN_ERR, align 4
  %168 = load i32, i32* @LOG_ELS, align 4
  %169 = load i64, i64* %19, align 8
  %170 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %171 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %169, i32 %172, i32 %173)
  store i32 1, i32* %15, align 4
  store i32 8, i32* %16, align 4
  %175 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %176 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp sgt i32 %177, 2
  br i1 %178, label %179, label %180

179:                                              ; preds = %165
  store i32 1000, i32* %17, align 4
  br label %180

180:                                              ; preds = %179, %165
  br label %198

181:                                              ; preds = %118
  store i32 1, i32* %18, align 4
  store i32 1, i32* %15, align 4
  %182 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %183 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 100
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  store i32 100, i32* %17, align 4
  br label %187

187:                                              ; preds = %186, %181
  store i32 250, i32* %16, align 4
  br label %198

188:                                              ; preds = %118
  store i32 100, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %198

189:                                              ; preds = %118, %118
  %190 = load i64, i64* %19, align 8
  %191 = icmp eq i64 %190, 149
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i64, i64* %20, align 8
  %194 = load i64, i64* @NameServer_DID, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 0, i32* %16, align 4
  store i32 100, i32* %17, align 4
  br label %197

197:                                              ; preds = %196, %192, %189
  store i32 1, i32* %15, align 4
  br label %198

198:                                              ; preds = %118, %197, %188, %187, %180, %164
  br label %360

199:                                              ; preds = %83, %83
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 4
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @RJT_UNAVAIL_TEMP, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  store i32 1, i32* %15, align 4
  br label %360

210:                                              ; preds = %199
  br label %360

211:                                              ; preds = %83, %83
  store i32 1, i32* %18, align 4
  store i32 1, i32* %15, align 4
  br label %360

212:                                              ; preds = %83
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @be32_to_cpu(i32 %218)
  %220 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  %222 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  switch i32 %225, label %357 [
    i32 128, label %226
    i32 131, label %289
    i32 130, label %308
    i32 129, label %320
  ]

226:                                              ; preds = %212
  %227 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @LSEXP_CMD_IN_PROGRESS, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %226
  %234 = load i64, i64* %19, align 8
  %235 = icmp eq i64 %234, 149
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 1000, i32* %17, align 4
  store i32 48, i32* %16, align 4
  br label %237

237:                                              ; preds = %236, %233
  store i32 1, i32* %15, align 4
  br label %357

238:                                              ; preds = %226
  %239 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %238
  %246 = load i64, i64* %19, align 8
  %247 = icmp eq i64 %246, 149
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 1000, i32* %17, align 4
  store i32 48, i32* %16, align 4
  br label %249

249:                                              ; preds = %248, %245
  store i32 1, i32* %15, align 4
  br label %357

250:                                              ; preds = %238
  %251 = load i64, i64* %19, align 8
  %252 = icmp eq i64 %251, 149
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i64, i64* %19, align 8
  %255 = icmp eq i64 %254, 148
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %250
  store i32 1000, i32* %17, align 4
  %257 = load i32, i32* @lpfc_max_els_tries, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %357

259:                                              ; preds = %253
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %288

266:                                              ; preds = %259
  %267 = load i64, i64* %19, align 8
  %268 = icmp eq i64 %267, 152
  br i1 %268, label %269, label %288

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @LSEXP_OUT_OF_RESOURCE, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %269
  %277 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %278 = load i32, i32* @KERN_ERR, align 4
  %279 = load i32, i32* @LOG_ELS, align 4
  %280 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %277, i32 %278, i32 %279, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %283)
  %285 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %286 = load i32, i32* @FC_VPORT_NO_FABRIC_RSCS, align 4
  %287 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %285, i32 %286)
  br label %288

288:                                              ; preds = %276, %269, %266, %259
  br label %357

289:                                              ; preds = %212
  %290 = load i64, i64* %19, align 8
  %291 = icmp eq i64 %290, 149
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load i64, i64* %19, align 8
  %294 = icmp eq i64 %293, 148
  br i1 %294, label %295, label %296

295:                                              ; preds = %292, %289
  store i32 1000, i32* %17, align 4
  store i32 48, i32* %16, align 4
  br label %307

296:                                              ; preds = %292
  %297 = load i64, i64* %19, align 8
  %298 = icmp eq i64 %297, 152
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  store i32 48, i32* %16, align 4
  %300 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %301 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp sge i32 %302, 32
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  store i32 1000, i32* %17, align 4
  br label %305

305:                                              ; preds = %304, %299
  br label %306

306:                                              ; preds = %305, %296
  br label %307

307:                                              ; preds = %306, %295
  store i32 1, i32* %15, align 4
  br label %357

308:                                              ; preds = %212
  %309 = load i64, i64* %19, align 8
  %310 = icmp eq i64 %309, 152
  br i1 %310, label %311, label %319

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @LSEXP_PORT_LOGIN_REQ, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  store i32 3, i32* %16, align 4
  store i32 1000, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %357

319:                                              ; preds = %311, %308
  br label %320

320:                                              ; preds = %212, %319
  %321 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %322 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %356

327:                                              ; preds = %320
  %328 = load i64, i64* %19, align 8
  %329 = icmp eq i64 %328, 152
  br i1 %329, label %330, label %356

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @LSEXP_INVALID_PNAME, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %344, label %337

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @LSEXP_INVALID_NPORT_ID, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %356

344:                                              ; preds = %337, %330
  %345 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %346 = load i32, i32* @KERN_ERR, align 4
  %347 = load i32, i32* @LOG_ELS, align 4
  %348 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %345, i32 %346, i32 %347, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %351)
  %353 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %354 = load i32, i32* @FC_VPORT_FABRIC_REJ_WWN, align 4
  %355 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %353, i32 %354)
  br label %356

356:                                              ; preds = %344, %337, %327, %320
  br label %357

357:                                              ; preds = %212, %356, %318, %307, %288, %256, %249, %237
  br label %360

358:                                              ; preds = %83, %83
  br label %360

359:                                              ; preds = %83
  br label %360

360:                                              ; preds = %359, %358, %357, %211, %210, %209, %198, %117, %103
  %361 = load i64, i64* %20, align 8
  %362 = load i64, i64* @FDMI_DID, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  store i32 1, i32* %15, align 4
  br label %365

365:                                              ; preds = %364, %360
  %366 = load i64, i64* %19, align 8
  %367 = icmp eq i64 %366, 151
  br i1 %367, label %368, label %392

368:                                              ; preds = %365
  %369 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %370 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %392

374:                                              ; preds = %368
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %376 = call i32 @lpfc_error_lost_link(%struct.TYPE_19__* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %392, label %378

378:                                              ; preds = %374
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %379 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %380 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp sge i32 %381, 100
  br i1 %382, label %383, label %384

383:                                              ; preds = %378
  store i32 5000, i32* %17, align 4
  br label %391

384:                                              ; preds = %378
  %385 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %386 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp sge i32 %387, 32
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  store i32 1000, i32* %17, align 4
  br label %390

390:                                              ; preds = %389, %384
  br label %391

391:                                              ; preds = %390, %383
  br label %404

392:                                              ; preds = %374, %368, %365
  %393 = load i64, i64* %19, align 8
  %394 = icmp eq i64 %393, 152
  br i1 %394, label %395, label %403

395:                                              ; preds = %392
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %397 = call i32 @lpfc_error_lost_link(%struct.TYPE_19__* %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %395
  store i32 1, i32* %15, align 4
  %400 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %401 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %16, align 4
  store i32 1000, i32* %17, align 4
  br label %403

403:                                              ; preds = %399, %395, %392
  br label %404

404:                                              ; preds = %403, %391
  %405 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %406 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %406, align 8
  %409 = load i32, i32* %16, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %423

411:                                              ; preds = %404
  %412 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %413 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %16, align 4
  %416 = icmp sge i32 %414, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %411
  %418 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %419 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %420, align 4
  store i32 0, i32* %15, align 4
  br label %423

423:                                              ; preds = %417, %411, %404
  %424 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %425 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @FC_UNLOADING, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %423
  store i32 0, i32* %15, align 4
  br label %431

431:                                              ; preds = %430, %423
  %432 = load i32, i32* %15, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %663

434:                                              ; preds = %431
  %435 = load i64, i64* %19, align 8
  %436 = icmp eq i64 %435, 149
  br i1 %436, label %440, label %437

437:                                              ; preds = %434
  %438 = load i64, i64* %19, align 8
  %439 = icmp eq i64 %438, 152
  br i1 %439, label %440, label %460

440:                                              ; preds = %437, %434
  %441 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %442 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @FCF_DISCOVERY, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %459

448:                                              ; preds = %440
  %449 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %450 = load i32, i32* @KERN_INFO, align 4
  %451 = load i32, i32* @LOG_ELS, align 4
  %452 = load i64, i64* %19, align 8
  %453 = load i64, i64* %20, align 8
  %454 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %455 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %17, align 4
  %458 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %449, i32 %450, i32 %451, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %452, i64 %453, i32 %456, i32 %457)
  store i32 0, i32* %4, align 4
  br label %702

459:                                              ; preds = %440
  br label %460

460:                                              ; preds = %459, %437
  %461 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %462 = load i32, i32* @KERN_INFO, align 4
  %463 = load i32, i32* @LOG_ELS, align 4
  %464 = load i64, i64* %19, align 8
  %465 = load i64, i64* %20, align 8
  %466 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %467 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* %17, align 4
  %470 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %461, i32 %462, i32 %463, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %464, i64 %465, i32 %468, i32 %469)
  %471 = load i64, i64* %19, align 8
  %472 = icmp eq i64 %471, 149
  br i1 %472, label %476, label %473

473:                                              ; preds = %460
  %474 = load i64, i64* %19, align 8
  %475 = icmp eq i64 %474, 153
  br i1 %475, label %476, label %507

476:                                              ; preds = %473, %460
  %477 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %478 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = icmp ne i32 %479, 136
  br i1 %480, label %491, label %481

481:                                              ; preds = %476
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 0
  %485 = load i32*, i32** %484, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 4
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 143
  br i1 %490, label %491, label %507

491:                                              ; preds = %481, %476
  %492 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %493 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %492, i32 0, i32 3
  %494 = call i64 @timer_pending(i32* %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %503, label %496

496:                                              ; preds = %491
  %497 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %498 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @FC_RSCN_MODE, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %496, %491
  %504 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %505 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %504)
  br label %506

506:                                              ; preds = %503, %496
  br label %507

507:                                              ; preds = %506, %481, %473
  %508 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %509 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %510, align 4
  %513 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %514 = icmp ne %struct.lpfc_nodelist* %513, null
  br i1 %514, label %515, label %574

515:                                              ; preds = %507
  %516 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %517 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %574

519:                                              ; preds = %515
  %520 = load i32, i32* %17, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %574

522:                                              ; preds = %519
  %523 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %524 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %525, align 4
  %528 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %529 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %532 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %531, i32 0, i32 1
  store i32 %530, i32* %532, align 8
  %533 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %534 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %533, i32 0, i32 6
  %535 = load i64, i64* @jiffies, align 8
  %536 = load i32, i32* %17, align 4
  %537 = call i64 @msecs_to_jiffies(i32 %536)
  %538 = add nsw i64 %535, %537
  %539 = call i32 @mod_timer(i32* %534, i64 %538)
  %540 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %541 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = call i32 @spin_lock_irq(i32 %542)
  %544 = load i32, i32* @NLP_DELAY_TMO, align 4
  %545 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %546 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %545, i32 0, i32 5
  %547 = load i32, i32* %546, align 8
  %548 = or i32 %547, %544
  store i32 %548, i32* %546, align 8
  %549 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %550 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @spin_unlock_irq(i32 %551)
  %553 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %554 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %557 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %556, i32 0, i32 3
  store i32 %555, i32* %557, align 8
  %558 = load i64, i64* %19, align 8
  %559 = icmp eq i64 %558, 148
  br i1 %559, label %560, label %565

560:                                              ; preds = %522
  %561 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %562 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %563 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %564 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %561, %struct.lpfc_nodelist* %562, i32 %563)
  br label %570

565:                                              ; preds = %522
  %566 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %567 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %568 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %569 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %566, %struct.lpfc_nodelist* %567, i32 %568)
  br label %570

570:                                              ; preds = %565, %560
  %571 = load i64, i64* %19, align 8
  %572 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %573 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %572, i32 0, i32 4
  store i64 %571, i64* %573, align 8
  store i32 1, i32* %4, align 4
  br label %702

574:                                              ; preds = %519, %515, %507
  %575 = load i64, i64* %19, align 8
  switch i64 %575, label %662 [
    i64 151, label %576
    i64 152, label %583
    i64 149, label %590
    i64 153, label %614
    i64 148, label %630
    i64 150, label %646
  ]

576:                                              ; preds = %574
  %577 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %578 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %579 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %580 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = call i32 @lpfc_issue_els_flogi(%struct.lpfc_vport* %577, %struct.lpfc_nodelist* %578, i32 %581)
  store i32 1, i32* %4, align 4
  br label %702

583:                                              ; preds = %574
  %584 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %585 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %586 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %587 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport* %584, %struct.lpfc_nodelist* %585, i32 %588)
  store i32 1, i32* %4, align 4
  br label %702

590:                                              ; preds = %574
  %591 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %592 = icmp ne %struct.lpfc_nodelist* %591, null
  br i1 %592, label %593, label %607

593:                                              ; preds = %590
  %594 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %595 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %607

597:                                              ; preds = %593
  %598 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %599 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %598, i32 0, i32 2
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %602 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %601, i32 0, i32 3
  store i32 %600, i32* %602, align 8
  %603 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %604 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %605 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %606 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %603, %struct.lpfc_nodelist* %604, i32 %605)
  br label %607

607:                                              ; preds = %597, %593, %590
  %608 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %609 = load i64, i64* %20, align 8
  %610 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %611 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %608, i64 %609, i32 %612)
  store i32 1, i32* %4, align 4
  br label %702

614:                                              ; preds = %574
  %615 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %616 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %615, i32 0, i32 2
  %617 = load i32, i32* %616, align 4
  %618 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %619 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %618, i32 0, i32 3
  store i32 %617, i32* %619, align 8
  %620 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %621 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %622 = load i32, i32* @NLP_STE_ADISC_ISSUE, align 4
  %623 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %620, %struct.lpfc_nodelist* %621, i32 %622)
  %624 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %625 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %626 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %627 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 8
  %629 = call i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %624, %struct.lpfc_nodelist* %625, i32 %628)
  store i32 1, i32* %4, align 4
  br label %702

630:                                              ; preds = %574
  %631 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %632 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %635 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %634, i32 0, i32 3
  store i32 %633, i32* %635, align 8
  %636 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %637 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %638 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %639 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %636, %struct.lpfc_nodelist* %637, i32 %638)
  %640 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %641 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %642 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %643 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = call i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %640, %struct.lpfc_nodelist* %641, i32 %644)
  store i32 1, i32* %4, align 4
  br label %702

646:                                              ; preds = %574
  %647 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %648 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 4
  %650 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %651 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %650, i32 0, i32 3
  store i32 %649, i32* %651, align 8
  %652 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %653 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %654 = load i32, i32* @NLP_STE_LOGO_ISSUE, align 4
  %655 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %652, %struct.lpfc_nodelist* %653, i32 %654)
  %656 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %657 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %658 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %659 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 8
  %661 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %656, %struct.lpfc_nodelist* %657, i32 %660)
  store i32 1, i32* %4, align 4
  br label %702

662:                                              ; preds = %574
  br label %663

663:                                              ; preds = %662, %431
  %664 = load i32, i32* %18, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %682

666:                                              ; preds = %663
  %667 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %668 = load i32, i32* @KERN_ERR, align 4
  %669 = load i32, i32* @LOG_ELS, align 4
  %670 = load i64, i64* %19, align 8
  %671 = load i64, i64* %20, align 8
  %672 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %673 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 8
  %675 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %676 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %676, i32 0, i32 0
  %678 = load i32*, i32** %677, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 4
  %680 = load i32, i32* %679, align 4
  %681 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %667, i32 %668, i32 %669, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0), i64 %670, i64 %671, i32 %674, i32 %680)
  br label %701

682:                                              ; preds = %663
  %683 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %684 = load i32, i32* @KERN_INFO, align 4
  %685 = load i32, i32* @LOG_ELS, align 4
  %686 = load i64, i64* %19, align 8
  %687 = load i64, i64* %20, align 8
  %688 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %689 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %688, i32 0, i32 0
  %690 = load i32, i32* %689, align 8
  %691 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %692 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 8
  %694 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %695 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %694, i32 0, i32 1
  %696 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %695, i32 0, i32 0
  %697 = load i32*, i32** %696, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 4
  %699 = load i32, i32* %698, align 4
  %700 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %683, i32 %684, i32 %685, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i64 %686, i64 %687, i32 %690, i32 %693, i32 %699)
  br label %701

701:                                              ; preds = %682, %666
  store i32 0, i32* %4, align 4
  br label %702

702:                                              ; preds = %701, %646, %630, %614, %607, %583, %576, %570, %448, %81
  %703 = load i32, i32* %4, align 4
  ret i32 %703
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i64) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i64) #1

declare dso_local i32 @lpfc_set_rrq_active(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_error_lost_link(%struct.TYPE_19__*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_flogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i64, i32) #1

declare dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
