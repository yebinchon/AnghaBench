; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_unsol_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_unsol_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_vport = type { i32, i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { %struct.lpfc_nodelist*, %struct.TYPE_14__, %struct.lpfc_vport*, i64 }
%struct.lpfc_nodelist = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.lpfc_dmabuf = type { i32* }

@LPFC_SLI3_HBQ_ENABLED = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_UNSOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RCV Unsol ELS:  status:x%x/x%x did:x%x\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@FC_DISC_DELAYED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@Fabric_DID_MASK = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i64 0, align 8
@ELS_CMD_MASK = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"0112 ELS command x%x received from NPORT x%x Data: x%x x%x x%x x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"RCV PLOGI:       did:x%x/ste:x%x flg:x%x\00", align 1
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"3312 Remote port assigned DID x%x %x\0A\00", align 1
@LSRJT_UNABLE_TPC = common dso_local global i8* null, align 8
@LSEXP_NOTHING_MORE = common dso_local global i8* null, align 8
@LPFC_DISC_AUTH = common dso_local global i32 0, align 4
@FC_PT2PT_PLOGI = common dso_local global i32 0, align 4
@FC_VFI_REGISTERED = common dso_local global i32 0, align 4
@NLP_TARGET_REMOVE = common dso_local global i32 0, align 4
@NLP_EVT_RCV_PLOGI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"RCV FLOGI:       did:x%x/ste:x%x flg:x%x\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"RCV LOGO:        did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_LOGO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"RCV PRLO:        did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_PRLO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"RCV ADISC:       did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_ADISC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"RCV PDISC:       did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_PDISC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"RCV FARPR:       did:x%x/ste:x%x flg:x%x\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"RCV FARP:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"RCV FAN:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"RCV PRLI:        did:x%x/ste:x%x flg:x%x\00", align 1
@NLP_EVT_RCV_PRLI = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"RCV LIRR:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"RCV RLS:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"RCV RPS:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"RCV RPL:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"RCV RNID:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"RCV RTV:        did:x%x/ste:x%x flg:x%x\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"RCV RRQ:         did:x%x/ste:x%x flg:x%x\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"RCV ECHO:        did:x%x/ste:x%x flg:x%x\00", align 1
@LSEXP_INVALID_OX_RX = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [41 x i8] c"RCV ELS cmd:     cmd:x%x did:x%x/ste:x%x\00", align 1
@LSRJT_CMD_UNSUPPORTED = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"0115 Unknown ELS command x%x received from NPORT x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"0111 Dropping received ELS cmd Data: x%x x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_vport*, %struct.lpfc_iocbq*)* @lpfc_els_unsol_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_els_unsol_buffer(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_vport* %2, %struct.lpfc_iocbq* %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.ls_rjt, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_vport* %2, %struct.lpfc_vport** %7, align 8
  store %struct.lpfc_iocbq* %3, %struct.lpfc_iocbq** %8, align 8
  store i8* null, i8** %17, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 1
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %18, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %22 = icmp ne %struct.lpfc_vport* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %25 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %4
  br label %910

29:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %31 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.lpfc_dmabuf*
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %46 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %47 = call i32 @lpfc_post_buffer(%struct.lpfc_hba* %45, %struct.lpfc_sli_ring* %46, i32 1)
  br label %48

48:                                               ; preds = %44, %29
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %48
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %60 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %59, i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %69, i32 %70)
  br label %910

72:                                               ; preds = %48
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %74 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %910

77:                                               ; preds = %72
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FC_UNLOADING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %910

85:                                               ; preds = %77
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FC_DISC_DELAYED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 138
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %910

96:                                               ; preds = %92, %85
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %97, i32 %98)
  store %struct.lpfc_nodelist* %99, %struct.lpfc_nodelist** %10, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %101 = icmp ne %struct.lpfc_nodelist* %100, null
  br i1 %101, label %132, label %102

102:                                              ; preds = %96
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %105, i32 %106)
  store %struct.lpfc_nodelist* %107, %struct.lpfc_nodelist** %10, align 8
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %109 = icmp ne %struct.lpfc_nodelist* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %910

111:                                              ; preds = %102
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %112, %struct.lpfc_nodelist* %113, i32 %114)
  %116 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %117 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %118 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %119 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %116, %struct.lpfc_nodelist* %117, i32 %118)
  store i32 1, i32* %15, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @Fabric_DID_MASK, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @Fabric_DID_MASK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %111
  %126 = load i32, i32* @NLP_FABRIC, align 4
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %128 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %111
  br label %181

132:                                              ; preds = %96
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %134 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %161, label %136

136:                                              ; preds = %132
  %137 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %138 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %139 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %140 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %137, %struct.lpfc_nodelist* %138, i64 %139)
  store %struct.lpfc_nodelist* %140, %struct.lpfc_nodelist** %10, align 8
  %141 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %142 = icmp ne %struct.lpfc_nodelist* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  br label %910

144:                                              ; preds = %136
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %146 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %147 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %148 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %145, %struct.lpfc_nodelist* %146, i32 %147)
  store i32 1, i32* %15, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @Fabric_DID_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @Fabric_DID_MASK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load i32, i32* @NLP_FABRIC, align 4
  %156 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %157 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %144
  br label %180

161:                                              ; preds = %132
  %162 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %163 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %169 = call i8* @lpfc_nlp_get(%struct.lpfc_nodelist* %168)
  %170 = bitcast i8* %169 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %170, %struct.lpfc_nodelist** %10, align 8
  %171 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %172 = icmp ne %struct.lpfc_nodelist* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %167
  br label %910

174:                                              ; preds = %167
  %175 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %176 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %177 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %178 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %175, %struct.lpfc_nodelist* %176, i32 %177)
  store i32 1, i32* %15, align 4
  br label %179

179:                                              ; preds = %174, %161
  br label %180

180:                                              ; preds = %179, %160
  br label %181

181:                                              ; preds = %180, %131
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %183 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 20
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %188 = call i8* @lpfc_nlp_get(%struct.lpfc_nodelist* %187)
  %189 = bitcast i8* %188 to %struct.lpfc_nodelist*
  %190 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %191 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %190, i32 0, i32 0
  store %struct.lpfc_nodelist* %189, %struct.lpfc_nodelist** %191, align 8
  %192 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %193 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %194 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %193, i32 0, i32 2
  store %struct.lpfc_vport* %192, %struct.lpfc_vport** %194, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @ELS_CMD_MASK, align 4
  %197 = and i32 %195, %196
  %198 = icmp eq i32 %197, 129
  br i1 %198, label %199, label %203

199:                                              ; preds = %181
  %200 = load i32, i32* @ELS_CMD_MASK, align 4
  %201 = load i32, i32* %13, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %199, %181
  %204 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %205 = load i32, i32* @KERN_INFO, align 4
  %206 = load i32, i32* @LOG_ELS, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %210 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %213 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %216 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %219 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %204, i32 %205, i32 %206, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %207, i32 %208, i32 %211, i32 %214, i32 %217, i32 %220)
  %222 = load i32, i32* %13, align 4
  switch i32 %222, label %860 [
    i32 138, label %223
    i32 142, label %385
    i32 140, label %411
    i32 136, label %445
    i32 129, label %479
    i32 147, label %495
    i32 139, label %529
    i32 143, label %559
    i32 144, label %579
    i32 145, label %599
    i32 137, label %619
    i32 141, label %649
    i32 134, label %675
    i32 131, label %701
    i32 132, label %727
    i32 133, label %753
    i32 128, label %779
    i32 130, label %805
    i32 146, label %831
    i32 135, label %857
  ]

223:                                              ; preds = %203
  %224 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %225 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %228 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %231 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %224, i32 %225, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %226, i32 %229, i32 %232)
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %235 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 19
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %240 = load i32*, i32** %12, align 8
  %241 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %242 = call %struct.lpfc_nodelist* @lpfc_plogi_confirm_nport(%struct.lpfc_hba* %239, i32* %240, %struct.lpfc_nodelist* %241)
  store %struct.lpfc_nodelist* %242, %struct.lpfc_nodelist** %10, align 8
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @LPFC_SLI_REV4, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %281

248:                                              ; preds = %223
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @FC_PT2PT, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %281

257:                                              ; preds = %248
  %258 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %259 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %262 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 4
  %263 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %264 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %270 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 4
  %271 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %272 = load i32, i32* @KERN_INFO, align 4
  %273 = load i32, i32* @LOG_ELS, align 4
  %274 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %275 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %278 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %271, i32 %272, i32 %273, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %276, i32 %279)
  br label %281

281:                                              ; preds = %257, %248, %223
  %282 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %283 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %284 = load i32*, i32** %12, align 8
  %285 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %282, %struct.lpfc_nodelist* %283, i32* %284)
  %286 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %287 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @FC_DISC_DELAYED, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %281
  %293 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %293, i8** %17, align 8
  %294 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %294, i8** %16, align 8
  br label %883

295:                                              ; preds = %281
  %296 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %297 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %296)
  store %struct.Scsi_Host* %297, %struct.Scsi_Host** %9, align 8
  %298 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %299 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %365

303:                                              ; preds = %295
  %304 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %305 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %304, i32 0, i32 4
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @FC_PT2PT, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %303
  %313 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %314 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %313, i32 0, i32 4
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @FC_PT2PT_PLOGI, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %312, %303
  %322 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %322, i8** %17, align 8
  %323 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %323, i8** %16, align 8
  br label %883

324:                                              ; preds = %312
  %325 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %326 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @LPFC_SLI_REV4, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %364

330:                                              ; preds = %324
  %331 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %332 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %330
  %336 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %337 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %340 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %338, %341
  br i1 %342, label %343, label %364

343:                                              ; preds = %335, %330
  %344 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %345 = call i32 @lpfc_unregister_fcf_prep(%struct.lpfc_hba* %344)
  %346 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %347 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @spin_lock_irq(i32 %348)
  %350 = load i32, i32* @FC_VFI_REGISTERED, align 4
  %351 = xor i32 %350, -1
  %352 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %353 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, %351
  store i32 %355, i32* %353, align 4
  %356 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %357 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @spin_unlock_irq(i32 %358)
  %360 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %361 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %360, i32 0, i32 2
  store i32 0, i32* %361, align 8
  %362 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %363 = call i32 @lpfc_issue_reg_vfi(%struct.lpfc_vport* %362)
  br label %364

364:                                              ; preds = %343, %335, %324
  br label %365

365:                                              ; preds = %364, %295
  %366 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %367 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @spin_lock_irq(i32 %368)
  %370 = load i32, i32* @NLP_TARGET_REMOVE, align 4
  %371 = xor i32 %370, -1
  %372 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %373 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %374, %371
  store i32 %375, i32* %373, align 8
  %376 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %377 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @spin_unlock_irq(i32 %378)
  %380 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %381 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %382 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %383 = load i32, i32* @NLP_EVT_RCV_PLOGI, align 4
  %384 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %380, %struct.lpfc_nodelist* %381, %struct.lpfc_iocbq* %382, i32 %383)
  br label %883

385:                                              ; preds = %203
  %386 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %387 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %388 = load i32, i32* %14, align 4
  %389 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %390 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %393 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %386, i32 %387, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %388, i32 %391, i32 %394)
  %396 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %397 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 18
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 4
  %401 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %402 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %403 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %404 = call i32 @lpfc_els_rcv_flogi(%struct.lpfc_vport* %401, %struct.lpfc_iocbq* %402, %struct.lpfc_nodelist* %403)
  %405 = load i32, i32* %15, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %385
  %408 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %409 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %408)
  br label %410

410:                                              ; preds = %407, %385
  br label %883

411:                                              ; preds = %203
  %412 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %413 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %414 = load i32, i32* %14, align 4
  %415 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %416 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %419 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %412, i32 %413, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %414, i32 %417, i32 %420)
  %422 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %423 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 17
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %424, align 4
  %427 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %428 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %429 = load i32*, i32** %12, align 8
  %430 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %427, %struct.lpfc_nodelist* %428, i32* %429)
  %431 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %432 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %435 = icmp slt i32 %433, %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %411
  %437 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %437, i8** %17, align 8
  %438 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %438, i8** %16, align 8
  br label %883

439:                                              ; preds = %411
  %440 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %441 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %442 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %443 = load i32, i32* @NLP_EVT_RCV_LOGO, align 4
  %444 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %440, %struct.lpfc_nodelist* %441, %struct.lpfc_iocbq* %442, i32 %443)
  br label %883

445:                                              ; preds = %203
  %446 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %447 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %448 = load i32, i32* %14, align 4
  %449 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %450 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %453 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %446, i32 %447, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %448, i32 %451, i32 %454)
  %456 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %457 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 16
  %459 = load i32, i32* %458, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %458, align 4
  %461 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %462 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %463 = load i32*, i32** %12, align 8
  %464 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %461, %struct.lpfc_nodelist* %462, i32* %463)
  %465 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %466 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %473

470:                                              ; preds = %445
  %471 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %471, i8** %17, align 8
  %472 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %472, i8** %16, align 8
  br label %883

473:                                              ; preds = %445
  %474 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %475 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %476 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %477 = load i32, i32* @NLP_EVT_RCV_PRLO, align 4
  %478 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %474, %struct.lpfc_nodelist* %475, %struct.lpfc_iocbq* %476, i32 %477)
  br label %883

479:                                              ; preds = %203
  %480 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %481 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %481, i32 0, i32 15
  %483 = load i32, i32* %482, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %482, align 4
  %485 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %486 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %487 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %488 = call i32 @lpfc_els_rcv_rscn(%struct.lpfc_vport* %485, %struct.lpfc_iocbq* %486, %struct.lpfc_nodelist* %487)
  %489 = load i32, i32* %15, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %479
  %492 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %493 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %492)
  br label %494

494:                                              ; preds = %491, %479
  br label %883

495:                                              ; preds = %203
  %496 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %497 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %498 = load i32, i32* %14, align 4
  %499 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %500 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %503 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %496, i32 %497, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %498, i32 %501, i32 %504)
  %506 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %507 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %508 = load i32*, i32** %12, align 8
  %509 = call i32 @lpfc_send_els_event(%struct.lpfc_vport* %506, %struct.lpfc_nodelist* %507, i32* %508)
  %510 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %511 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 14
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %512, align 4
  %515 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %516 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %519 = icmp slt i32 %517, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %495
  %521 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %521, i8** %17, align 8
  %522 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %522, i8** %16, align 8
  br label %883

523:                                              ; preds = %495
  %524 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %525 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %526 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %527 = load i32, i32* @NLP_EVT_RCV_ADISC, align 4
  %528 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %524, %struct.lpfc_nodelist* %525, %struct.lpfc_iocbq* %526, i32 %527)
  br label %883

529:                                              ; preds = %203
  %530 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %531 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %532 = load i32, i32* %14, align 4
  %533 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %534 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %537 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 8
  %539 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %530, i32 %531, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %532, i32 %535, i32 %538)
  %540 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %541 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %541, i32 0, i32 13
  %543 = load i32, i32* %542, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %542, align 4
  %545 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %546 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %549 = icmp slt i32 %547, %548
  br i1 %549, label %550, label %553

550:                                              ; preds = %529
  %551 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %551, i8** %17, align 8
  %552 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %552, i8** %16, align 8
  br label %883

553:                                              ; preds = %529
  %554 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %555 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %556 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %557 = load i32, i32* @NLP_EVT_RCV_PDISC, align 4
  %558 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %554, %struct.lpfc_nodelist* %555, %struct.lpfc_iocbq* %556, i32 %557)
  br label %883

559:                                              ; preds = %203
  %560 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %561 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %562 = load i32, i32* %14, align 4
  %563 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %564 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 4
  %566 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %567 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 8
  %569 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %560, i32 %561, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %562, i32 %565, i32 %568)
  %570 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %571 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 12
  %573 = load i32, i32* %572, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %572, align 4
  %575 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %576 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %577 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %578 = call i32 @lpfc_els_rcv_farpr(%struct.lpfc_vport* %575, %struct.lpfc_iocbq* %576, %struct.lpfc_nodelist* %577)
  br label %883

579:                                              ; preds = %203
  %580 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %581 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %582 = load i32, i32* %14, align 4
  %583 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %584 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %587 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %580, i32 %581, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %582, i32 %585, i32 %588)
  %590 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %591 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %591, i32 0, i32 11
  %593 = load i32, i32* %592, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %592, align 4
  %595 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %596 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %597 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %598 = call i32 @lpfc_els_rcv_farp(%struct.lpfc_vport* %595, %struct.lpfc_iocbq* %596, %struct.lpfc_nodelist* %597)
  br label %883

599:                                              ; preds = %203
  %600 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %601 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %602 = load i32, i32* %14, align 4
  %603 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %604 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %603, i32 0, i32 2
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %607 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %606, i32 0, i32 1
  %608 = load i32, i32* %607, align 8
  %609 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %600, i32 %601, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %602, i32 %605, i32 %608)
  %610 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %611 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %611, i32 0, i32 10
  %613 = load i32, i32* %612, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %612, align 4
  %615 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %616 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %617 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %618 = call i32 @lpfc_els_rcv_fan(%struct.lpfc_vport* %615, %struct.lpfc_iocbq* %616, %struct.lpfc_nodelist* %617)
  br label %883

619:                                              ; preds = %203
  %620 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %621 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %622 = load i32, i32* %14, align 4
  %623 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %624 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %623, i32 0, i32 2
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %627 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 8
  %629 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %620, i32 %621, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %622, i32 %625, i32 %628)
  %630 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %631 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %631, i32 0, i32 9
  %633 = load i32, i32* %632, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %632, align 4
  %635 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %636 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %635, i32 0, i32 2
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* @LPFC_DISC_AUTH, align 4
  %639 = icmp slt i32 %637, %638
  br i1 %639, label %640, label %643

640:                                              ; preds = %619
  %641 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %641, i8** %17, align 8
  %642 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %642, i8** %16, align 8
  br label %883

643:                                              ; preds = %619
  %644 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %645 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %646 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %647 = load i32, i32* @NLP_EVT_RCV_PRLI, align 4
  %648 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %644, %struct.lpfc_nodelist* %645, %struct.lpfc_iocbq* %646, i32 %647)
  br label %883

649:                                              ; preds = %203
  %650 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %651 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %652 = load i32, i32* %14, align 4
  %653 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %654 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %653, i32 0, i32 2
  %655 = load i32, i32* %654, align 4
  %656 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %657 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %656, i32 0, i32 1
  %658 = load i32, i32* %657, align 8
  %659 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %650, i32 %651, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %652, i32 %655, i32 %658)
  %660 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %661 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %661, i32 0, i32 8
  %663 = load i32, i32* %662, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %662, align 4
  %665 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %666 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %667 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %668 = call i32 @lpfc_els_rcv_lirr(%struct.lpfc_vport* %665, %struct.lpfc_iocbq* %666, %struct.lpfc_nodelist* %667)
  %669 = load i32, i32* %15, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %674

671:                                              ; preds = %649
  %672 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %673 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %672)
  br label %674

674:                                              ; preds = %671, %649
  br label %883

675:                                              ; preds = %203
  %676 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %677 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %678 = load i32, i32* %14, align 4
  %679 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %680 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %679, i32 0, i32 2
  %681 = load i32, i32* %680, align 4
  %682 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %683 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %682, i32 0, i32 1
  %684 = load i32, i32* %683, align 8
  %685 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %676, i32 %677, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %678, i32 %681, i32 %684)
  %686 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %687 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %687, i32 0, i32 7
  %689 = load i32, i32* %688, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %688, align 4
  %691 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %692 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %693 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %694 = call i32 @lpfc_els_rcv_rls(%struct.lpfc_vport* %691, %struct.lpfc_iocbq* %692, %struct.lpfc_nodelist* %693)
  %695 = load i32, i32* %15, align 4
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %700

697:                                              ; preds = %675
  %698 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %699 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %698)
  br label %700

700:                                              ; preds = %697, %675
  br label %883

701:                                              ; preds = %203
  %702 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %703 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %704 = load i32, i32* %14, align 4
  %705 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %706 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %705, i32 0, i32 2
  %707 = load i32, i32* %706, align 4
  %708 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %709 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 8
  %711 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %702, i32 %703, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %704, i32 %707, i32 %710)
  %712 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %713 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %713, i32 0, i32 6
  %715 = load i32, i32* %714, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %714, align 4
  %717 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %718 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %719 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %720 = call i32 @lpfc_els_rcv_rps(%struct.lpfc_vport* %717, %struct.lpfc_iocbq* %718, %struct.lpfc_nodelist* %719)
  %721 = load i32, i32* %15, align 4
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %701
  %724 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %725 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %724)
  br label %726

726:                                              ; preds = %723, %701
  br label %883

727:                                              ; preds = %203
  %728 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %729 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %730 = load i32, i32* %14, align 4
  %731 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %732 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %731, i32 0, i32 2
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %735 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %734, i32 0, i32 1
  %736 = load i32, i32* %735, align 8
  %737 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %728, i32 %729, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %730, i32 %733, i32 %736)
  %738 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %739 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %738, i32 0, i32 1
  %740 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %739, i32 0, i32 5
  %741 = load i32, i32* %740, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %740, align 4
  %743 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %744 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %745 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %746 = call i32 @lpfc_els_rcv_rpl(%struct.lpfc_vport* %743, %struct.lpfc_iocbq* %744, %struct.lpfc_nodelist* %745)
  %747 = load i32, i32* %15, align 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %752

749:                                              ; preds = %727
  %750 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %751 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %750)
  br label %752

752:                                              ; preds = %749, %727
  br label %883

753:                                              ; preds = %203
  %754 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %755 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %756 = load i32, i32* %14, align 4
  %757 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %758 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %757, i32 0, i32 2
  %759 = load i32, i32* %758, align 4
  %760 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %761 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %760, i32 0, i32 1
  %762 = load i32, i32* %761, align 8
  %763 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %754, i32 %755, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %756, i32 %759, i32 %762)
  %764 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %765 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %764, i32 0, i32 1
  %766 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %765, i32 0, i32 4
  %767 = load i32, i32* %766, align 4
  %768 = add nsw i32 %767, 1
  store i32 %768, i32* %766, align 4
  %769 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %770 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %771 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %772 = call i32 @lpfc_els_rcv_rnid(%struct.lpfc_vport* %769, %struct.lpfc_iocbq* %770, %struct.lpfc_nodelist* %771)
  %773 = load i32, i32* %15, align 4
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %778

775:                                              ; preds = %753
  %776 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %777 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %776)
  br label %778

778:                                              ; preds = %775, %753
  br label %883

779:                                              ; preds = %203
  %780 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %781 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %782 = load i32, i32* %14, align 4
  %783 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %784 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %783, i32 0, i32 2
  %785 = load i32, i32* %784, align 4
  %786 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %787 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %786, i32 0, i32 1
  %788 = load i32, i32* %787, align 8
  %789 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %780, i32 %781, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 %782, i32 %785, i32 %788)
  %790 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %791 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %791, i32 0, i32 3
  %793 = load i32, i32* %792, align 4
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %792, align 4
  %795 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %796 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %797 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %798 = call i32 @lpfc_els_rcv_rtv(%struct.lpfc_vport* %795, %struct.lpfc_iocbq* %796, %struct.lpfc_nodelist* %797)
  %799 = load i32, i32* %15, align 4
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %801, label %804

801:                                              ; preds = %779
  %802 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %803 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %802)
  br label %804

804:                                              ; preds = %801, %779
  br label %883

805:                                              ; preds = %203
  %806 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %807 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %808 = load i32, i32* %14, align 4
  %809 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %810 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %809, i32 0, i32 2
  %811 = load i32, i32* %810, align 4
  %812 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %813 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 8
  %815 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %806, i32 %807, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %808, i32 %811, i32 %814)
  %816 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %817 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %816, i32 0, i32 1
  %818 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %817, i32 0, i32 2
  %819 = load i32, i32* %818, align 4
  %820 = add nsw i32 %819, 1
  store i32 %820, i32* %818, align 4
  %821 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %822 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %823 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %824 = call i32 @lpfc_els_rcv_rrq(%struct.lpfc_vport* %821, %struct.lpfc_iocbq* %822, %struct.lpfc_nodelist* %823)
  %825 = load i32, i32* %15, align 4
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %827, label %830

827:                                              ; preds = %805
  %828 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %829 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %828)
  br label %830

830:                                              ; preds = %827, %805
  br label %883

831:                                              ; preds = %203
  %832 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %833 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %834 = load i32, i32* %14, align 4
  %835 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %836 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %835, i32 0, i32 2
  %837 = load i32, i32* %836, align 4
  %838 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %839 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %838, i32 0, i32 1
  %840 = load i32, i32* %839, align 8
  %841 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %832, i32 %833, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %834, i32 %837, i32 %840)
  %842 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %843 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %842, i32 0, i32 1
  %844 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %843, i32 0, i32 1
  %845 = load i32, i32* %844, align 4
  %846 = add nsw i32 %845, 1
  store i32 %846, i32* %844, align 4
  %847 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %848 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %849 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %850 = call i32 @lpfc_els_rcv_echo(%struct.lpfc_vport* %847, %struct.lpfc_iocbq* %848, %struct.lpfc_nodelist* %849)
  %851 = load i32, i32* %15, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %856

853:                                              ; preds = %831
  %854 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %855 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %854)
  br label %856

856:                                              ; preds = %853, %831
  br label %883

857:                                              ; preds = %203
  %858 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %858, i8** %17, align 8
  %859 = load i8*, i8** @LSEXP_INVALID_OX_RX, align 8
  store i8* %859, i8** %16, align 8
  br label %883

860:                                              ; preds = %203
  %861 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %862 = load i32, i32* @LPFC_DISC_TRC_ELS_UNSOL, align 4
  %863 = load i32, i32* %13, align 4
  %864 = load i32, i32* %14, align 4
  %865 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %866 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %865, i32 0, i32 2
  %867 = load i32, i32* %866, align 4
  %868 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %861, i32 %862, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %863, i32 %864, i32 %867)
  %869 = load i8*, i8** @LSRJT_CMD_UNSUPPORTED, align 8
  store i8* %869, i8** %17, align 8
  %870 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %870, i8** %16, align 8
  %871 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %872 = load i32, i32* @KERN_ERR, align 4
  %873 = load i32, i32* @LOG_ELS, align 4
  %874 = load i32, i32* %13, align 4
  %875 = load i32, i32* %14, align 4
  %876 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %871, i32 %872, i32 %873, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %874, i32 %875)
  %877 = load i32, i32* %15, align 4
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %882

879:                                              ; preds = %860
  %880 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %881 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %880)
  br label %882

882:                                              ; preds = %879, %860
  br label %883

883:                                              ; preds = %882, %857, %856, %830, %804, %778, %752, %726, %700, %674, %643, %640, %599, %579, %559, %553, %550, %523, %520, %494, %473, %470, %439, %436, %410, %365, %321, %292
  %884 = load i8*, i8** %17, align 8
  %885 = icmp ne i8* %884, null
  br i1 %885, label %886, label %903

886:                                              ; preds = %883
  %887 = call i32 @memset(%struct.ls_rjt* %11, i32 0, i32 24)
  %888 = load i8*, i8** %17, align 8
  %889 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %890 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %890, i32 0, i32 1
  store i8* %888, i8** %891, align 8
  %892 = load i8*, i8** %16, align 8
  %893 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %894 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %893, i32 0, i32 1
  %895 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %894, i32 0, i32 0
  store i8* %892, i8** %895, align 8
  %896 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %897 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %898 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 8
  %900 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %901 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %902 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %896, i32 %899, %struct.lpfc_iocbq* %900, %struct.lpfc_nodelist* %901, i32* null)
  br label %903

903:                                              ; preds = %886, %883
  %904 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %905 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %904, i32 0, i32 0
  %906 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %905, align 8
  %907 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %906)
  %908 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %909 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %908, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %909, align 8
  br label %943

910:                                              ; preds = %173, %143, %110, %95, %84, %76, %58, %28
  %911 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %912 = icmp ne %struct.lpfc_vport* %911, null
  br i1 %912, label %913, label %937

913:                                              ; preds = %910
  %914 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %915 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %914, i32 0, i32 0
  %916 = load i32, i32* %915, align 4
  %917 = load i32, i32* @FC_UNLOADING, align 4
  %918 = and i32 %916, %917
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %937, label %920

920:                                              ; preds = %913
  %921 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %922 = load i32, i32* @KERN_ERR, align 4
  %923 = load i32, i32* @LOG_ELS, align 4
  %924 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %925 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %924, i32 0, i32 0
  %926 = load i32, i32* %925, align 8
  %927 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %928 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %927, i32 0, i32 2
  %929 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %928, i32 0, i32 0
  %930 = load i32*, i32** %929, align 8
  %931 = getelementptr inbounds i32, i32* %930, i64 4
  %932 = load i32, i32* %931, align 4
  %933 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %934 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %933, i32 0, i32 1
  %935 = load i32, i32* %934, align 4
  %936 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %921, i32 %922, i32 %923, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0), i32 %926, i32 %932, i32 %935)
  br label %937

937:                                              ; preds = %920, %913, %910
  %938 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %939 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %939, i32 0, i32 0
  %941 = load i32, i32* %940, align 4
  %942 = add nsw i32 %941, 1
  store i32 %942, i32* %940, align 4
  br label %943

943:                                              ; preds = %937, %903
  ret void
}

declare dso_local i32 @lpfc_post_buffer(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i64) #1

declare dso_local i8* @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_plogi_confirm_nport(%struct.lpfc_hba*, i32*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_send_els_event(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_unregister_fcf_prep(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_issue_reg_vfi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_rcv_flogi(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rscn(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_farpr(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_farp(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_fan(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_lirr(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rls(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rps(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rpl(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rnid(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rtv(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_rrq(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rcv_echo(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
