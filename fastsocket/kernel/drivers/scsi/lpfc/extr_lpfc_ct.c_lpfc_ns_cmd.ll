; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ns_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ns_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i64, i32 }
%struct.lpfc_dmabuf = type { i32, i8*, i32 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_19__, %struct.TYPE_17__, i32, i32, %struct.TYPE_23__, %struct.TYPE_20__, i8*, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_18__ = type { i32, i32, i8* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i8* }
%struct.TYPE_27__ = type { i32, i8* }
%struct.TYPE_26__ = type { i32, i8* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.ulp_bde64 = type { %struct.TYPE_19__, %struct.TYPE_17__, i32, i32, %struct.TYPE_23__, %struct.TYPE_20__, i8*, i8* }
%struct.lpfc_iocbq = type opaque
%struct.lpfc_iocbq.8 = type opaque
%struct.lpfc_iocbq.0 = type opaque
%struct.lpfc_iocbq.1 = type opaque
%struct.lpfc_iocbq.2 = type opaque
%struct.lpfc_iocbq.3 = type opaque
%struct.lpfc_iocbq.4 = type opaque
%struct.lpfc_iocbq.5 = type opaque
%struct.lpfc_iocbq.6 = type opaque
%struct.lpfc_iocbq.7 = type opaque

@NameServer_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"0236 NameServer Req Data: x%x x%x x%x\0A\00", align 1
@GID_REQUEST_SZ = common dso_local global i64 0, align 8
@GFF_REQUEST_SZ = common dso_local global i64 0, align 8
@RFT_REQUEST_SZ = common dso_local global i64 0, align 8
@RNN_REQUEST_SZ = common dso_local global i64 0, align 8
@RSPN_REQUEST_SZ = common dso_local global i64 0, align 8
@RSNN_REQUEST_SZ = common dso_local global i64 0, align 8
@DA_ID_REQUEST_SZ = common dso_local global i64 0, align 8
@RFF_REQUEST_SZ = common dso_local global i64 0, align 8
@SLI_CT_REVISION = common dso_local global i32 0, align 4
@SLI_CT_DIRECTORY_SERVICE = common dso_local global i32 0, align 4
@SLI_CT_DIRECTORY_NAME_SERVER = common dso_local global i32 0, align 4
@SLI_CTPT_FCP = common dso_local global i32 0, align 4
@LPFC_NS_QRY = common dso_local global i32 0, align 4
@FC_MAX_NS_RSP = common dso_local global i32 0, align 4
@FC_CT_RFT_ID = common dso_local global i32 0, align 4
@FC_CT_RNN_ID = common dso_local global i32 0, align 4
@FC_CT_RSPN_ID = common dso_local global i32 0, align 4
@FC_CT_RSNN_NN = common dso_local global i32 0, align 4
@FC_CT_RFF_ID = common dso_local global i32 0, align 4
@FC4_FEATURE_INIT = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue CT cmd:    cmd:x%x did:x%x\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"0266 Issue NameServer Req x%x err %d Data: x%x x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_sli_ct_request*, align 8
  %15 = alloca %struct.ulp_bde64*, align 8
  %16 = alloca void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 6
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %11, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* null, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  store i32 1024, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %24 = load i32, i32* @NameServer_DID, align 4
  %25 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %23, i32 %24)
  store %struct.lpfc_nodelist* %25, %struct.lpfc_nodelist** %10, align 8
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %27 = icmp ne %struct.lpfc_nodelist* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %30 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %34 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %28, %4
  store i32 1, i32* %19, align 4
  br label %479

39:                                               ; preds = %32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %40)
  store %struct.lpfc_dmabuf* %41, %struct.lpfc_dmabuf** %12, align 8
  %42 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %43 = icmp ne %struct.lpfc_dmabuf* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 2, i32* %19, align 4
  br label %479

45:                                               ; preds = %39
  %46 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %47 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %46, i32 0, i32 2
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %50 = load i32, i32* @MEM_PRI, align 4
  %51 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %52 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %51, i32 0, i32 0
  %53 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %49, i32 %50, i32* %52)
  %54 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %55 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %57 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %45
  store i32 3, i32* %19, align 4
  br label %476

61:                                               ; preds = %45
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %62)
  store %struct.lpfc_dmabuf* %63, %struct.lpfc_dmabuf** %13, align 8
  %64 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %65 = icmp ne %struct.lpfc_dmabuf* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 4, i32* %19, align 4
  br label %467

67:                                               ; preds = %61
  %68 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %69 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %68, i32 0, i32 2
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %72 = load i32, i32* @MEM_PRI, align 4
  %73 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %74 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %73, i32 0, i32 0
  %75 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %71, i32 %72, i32* %74)
  %76 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %77 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %79 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %67
  store i32 5, i32* %19, align 4
  br label %464

83:                                               ; preds = %67
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %85 = load i32, i32* @KERN_INFO, align 4
  %86 = load i32, i32* @LOG_DISCOVERY, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i32 %93)
  %95 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %96 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = bitcast i8* %97 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %98, %struct.ulp_bde64** %15, align 8
  %99 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %100 = call i32 @memset(%struct.ulp_bde64* %99, i32 0, i32 184)
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %102 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @putPaddrHigh(i32 %103)
  %105 = call i8* @le32_to_cpu(i8* %104)
  %106 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %107 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %109 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @putPaddrLow(i32 %110)
  %112 = call i8* @le32_to_cpu(i8* %111)
  %113 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %114 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %116 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 133
  br i1 %120, label %121, label %127

121:                                              ; preds = %83
  %122 = load i64, i64* @GID_REQUEST_SZ, align 8
  %123 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %124 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  store i64 %122, i64* %126, align 8
  br label %202

127:                                              ; preds = %83
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 134
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i64, i64* @GFF_REQUEST_SZ, align 8
  %132 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %133 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i64 %131, i64* %135, align 8
  br label %201

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = icmp eq i32 %137, 131
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i64, i64* @RFT_REQUEST_SZ, align 8
  %141 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %142 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i64 %140, i64* %144, align 8
  br label %200

145:                                              ; preds = %136
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 130
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i64, i64* @RNN_REQUEST_SZ, align 8
  %150 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %151 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  br label %199

154:                                              ; preds = %145
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, 128
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i64, i64* @RSPN_REQUEST_SZ, align 8
  %159 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %160 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  store i64 %158, i64* %162, align 8
  br label %198

163:                                              ; preds = %154
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 129
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i64, i64* @RSNN_REQUEST_SZ, align 8
  %168 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %169 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  store i64 %167, i64* %171, align 8
  br label %197

172:                                              ; preds = %163
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 135
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i64, i64* @DA_ID_REQUEST_SZ, align 8
  %177 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %178 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  store i64 %176, i64* %180, align 8
  br label %196

181:                                              ; preds = %172
  %182 = load i32, i32* %7, align 4
  %183 = icmp eq i32 %182, 132
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i64, i64* @RFF_REQUEST_SZ, align 8
  %186 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %187 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  store i64 %185, i64* %189, align 8
  br label %195

190:                                              ; preds = %181
  %191 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %192 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %190, %184
  br label %196

196:                                              ; preds = %195, %175
  br label %197

197:                                              ; preds = %196, %166
  br label %198

198:                                              ; preds = %197, %157
  br label %199

199:                                              ; preds = %198, %148
  br label %200

200:                                              ; preds = %199, %139
  br label %201

201:                                              ; preds = %200, %130
  br label %202

202:                                              ; preds = %201, %121
  %203 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %204 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i8* @le32_to_cpu(i8* %206)
  %208 = load %struct.ulp_bde64*, %struct.ulp_bde64** %15, align 8
  %209 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  store i8* %207, i8** %210, align 8
  %211 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %212 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = bitcast i8* %213 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %214, %struct.lpfc_sli_ct_request** %14, align 8
  %215 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %216 = bitcast %struct.lpfc_sli_ct_request* %215 to %struct.ulp_bde64*
  %217 = call i32 @memset(%struct.ulp_bde64* %216, i32 0, i32 184)
  %218 = load i32, i32* @SLI_CT_REVISION, align 4
  %219 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %220 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  store i32 %218, i32* %222, align 8
  %223 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %224 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load i32, i32* @SLI_CT_DIRECTORY_SERVICE, align 4
  %228 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %229 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @SLI_CT_DIRECTORY_NAME_SERVER, align 4
  %231 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %232 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %234 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  store i64 0, i64* %236, align 8
  %237 = load i32, i32* %7, align 4
  switch i32 %237, label %434 [
    i32 133, label %238
    i32 134, label %262
    i32 131, label %274
    i32 130, label %298
    i32 128, label %326
    i32 129, label %358
    i32 135, label %390
    i32 132, label %404
  ]

238:                                              ; preds = %202
  %239 = call i8* @be16_to_cpu(i32 133)
  %240 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %241 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  store i8* %239, i8** %243, align 8
  %244 = load i32, i32* @SLI_CTPT_FCP, align 4
  %245 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %246 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 0
  store i32 %244, i32* %248, align 8
  %249 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %250 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @LPFC_NS_QRY, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %238
  %255 = load i32, i32* @LPFC_NS_QRY, align 4
  %256 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %257 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %238
  %259 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %260 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %259)
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*)* @lpfc_cmpl_ct_cmd_gid_ft to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  %261 = load i32, i32* @FC_MAX_NS_RSP, align 4
  store i32 %261, i32* %17, align 4
  br label %434

262:                                              ; preds = %202
  %263 = call i8* @be16_to_cpu(i32 134)
  %264 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %265 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  store i8* %263, i8** %267, align 8
  %268 = load i32, i32* %9, align 4
  %269 = call i8* @cpu_to_be32(i32 %268)
  %270 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %271 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 6
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  store i8* %269, i8** %273, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.1*, %struct.lpfc_iocbq.1*)* @lpfc_cmpl_ct_cmd_gff_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %434

274:                                              ; preds = %202
  %275 = load i32, i32* @FC_CT_RFT_ID, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %278 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, %276
  store i32 %280, i32* %278, align 4
  %281 = call i8* @be16_to_cpu(i32 131)
  %282 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %283 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 0
  store i8* %281, i8** %285, align 8
  %286 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %287 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i8* @cpu_to_be32(i32 %288)
  %290 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %291 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 1
  store i8* %289, i8** %293, align 8
  %294 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %295 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.2*, %struct.lpfc_iocbq.2*)* @lpfc_cmpl_ct_cmd_rft_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %434

298:                                              ; preds = %202
  %299 = load i32, i32* @FC_CT_RNN_ID, align 4
  %300 = xor i32 %299, -1
  %301 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %302 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = call i8* @be16_to_cpu(i32 130)
  %306 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %307 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  store i8* %305, i8** %309, align 8
  %310 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %311 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i8* @cpu_to_be32(i32 %312)
  %314 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %315 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 1
  store i8* %313, i8** %317, align 8
  %318 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %319 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %324 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %323, i32 0, i32 4
  %325 = call i32 @memcpy(i32 %322, i32* %324, i32 4)
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.3*, %struct.lpfc_iocbq.3*)* @lpfc_cmpl_ct_cmd_rnn_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %434

326:                                              ; preds = %202
  %327 = load i32, i32* @FC_CT_RSPN_ID, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %330 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, %328
  store i32 %332, i32* %330, align 4
  %333 = call i8* @be16_to_cpu(i32 128)
  %334 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %335 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 0
  store i8* %333, i8** %337, align 8
  %338 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %339 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i8* @cpu_to_be32(i32 %340)
  %342 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %343 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 2
  store i8* %341, i8** %345, align 8
  store i64 4, i64* %18, align 8
  %346 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %347 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %348 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i64, i64* %18, align 8
  %353 = call i32 @lpfc_vport_symbolic_port_name(%struct.lpfc_vport* %346, i32 %351, i64 %352)
  %354 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %355 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 1
  store i32 %353, i32* %357, align 4
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.4*, %struct.lpfc_iocbq.4*)* @lpfc_cmpl_ct_cmd_rspn_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %434

358:                                              ; preds = %202
  %359 = load i32, i32* @FC_CT_RSNN_NN, align 4
  %360 = xor i32 %359, -1
  %361 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %362 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, %360
  store i32 %364, i32* %362, align 4
  %365 = call i8* @be16_to_cpu(i32 129)
  %366 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %367 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 0
  store i8* %365, i8** %369, align 8
  %370 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %371 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %376 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %375, i32 0, i32 4
  %377 = call i32 @memcpy(i32 %374, i32* %376, i32 4)
  store i64 4, i64* %18, align 8
  %378 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %379 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %380 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i64, i64* %18, align 8
  %385 = call i32 @lpfc_vport_symbolic_node_name(%struct.lpfc_vport* %378, i32 %383, i64 %384)
  %386 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %387 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %388, i32 0, i32 1
  store i32 %385, i32* %389, align 4
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.5*, %struct.lpfc_iocbq.5*)* @lpfc_cmpl_ct_cmd_rsnn_nn to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %434

390:                                              ; preds = %202
  %391 = call i8* @be16_to_cpu(i32 135)
  %392 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %393 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 0
  store i8* %391, i8** %395, align 8
  %396 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %397 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = call i8* @cpu_to_be32(i32 %398)
  %400 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %401 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %402, i32 0, i32 0
  store i8* %399, i8** %403, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.6*, %struct.lpfc_iocbq.6*)* @lpfc_cmpl_ct_cmd_da_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %434

404:                                              ; preds = %202
  %405 = load i32, i32* @FC_CT_RFF_ID, align 4
  %406 = xor i32 %405, -1
  %407 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %408 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %407, i32 0, i32 3
  %409 = load i32, i32* %408, align 4
  %410 = and i32 %409, %406
  store i32 %410, i32* %408, align 4
  %411 = call i8* @be16_to_cpu(i32 132)
  %412 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %413 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 0
  store i8* %411, i8** %415, align 8
  %416 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %417 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = call i8* @cpu_to_be32(i32 %418)
  %420 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %421 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 2
  store i8* %419, i8** %423, align 8
  %424 = load i32, i32* @FC4_FEATURE_INIT, align 4
  %425 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %426 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 1
  store i32 %424, i32* %428, align 4
  %429 = load i32, i32* @FC_TYPE_FCP, align 4
  %430 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %14, align 8
  %431 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 0
  store i32 %429, i32* %433, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.7*, %struct.lpfc_iocbq.7*)* @lpfc_cmpl_ct_cmd_rff_id to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  br label %434

434:                                              ; preds = %202, %404, %390, %358, %326, %298, %274, %262, %258
  %435 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %436 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %437 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %438 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %439 = load void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  %440 = bitcast void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %439 to void (%struct.lpfc_hba*, %struct.lpfc_iocbq.8*, %struct.lpfc_iocbq.8*)*
  %441 = load i32, i32* %17, align 4
  %442 = load i32, i32* %8, align 4
  %443 = call i32 @lpfc_ct_cmd(%struct.lpfc_vport* %435, %struct.lpfc_dmabuf* %436, %struct.lpfc_dmabuf* %437, %struct.lpfc_nodelist* %438, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.8*, %struct.lpfc_iocbq.8*)* %440, i32 %441, i32 %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %453, label %445

445:                                              ; preds = %434
  %446 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %447 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %448 = load i32, i32* %7, align 4
  %449 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %450 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %446, i32 %447, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %448, i32 %451, i32 0)
  store i32 0, i32* %5, align 4
  br label %492

453:                                              ; preds = %434
  store i32 6, i32* %19, align 4
  %454 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %455 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %454)
  %456 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %457 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %458 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %457, i32 0, i32 1
  %459 = load i8*, i8** %458, align 8
  %460 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %461 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %456, i8* %459, i32 %462)
  br label %464

464:                                              ; preds = %453, %82
  %465 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %466 = call i32 @kfree(%struct.lpfc_dmabuf* %465)
  br label %467

467:                                              ; preds = %464, %66
  %468 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %469 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %470 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %469, i32 0, i32 1
  %471 = load i8*, i8** %470, align 8
  %472 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %473 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %468, i8* %471, i32 %474)
  br label %476

476:                                              ; preds = %467, %60
  %477 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %478 = call i32 @kfree(%struct.lpfc_dmabuf* %477)
  br label %479

479:                                              ; preds = %476, %44, %38
  %480 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %481 = load i32, i32* @KERN_ERR, align 4
  %482 = load i32, i32* @LOG_DISCOVERY, align 4
  %483 = load i32, i32* %7, align 4
  %484 = load i32, i32* %19, align 4
  %485 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %486 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %489 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %480, i32 %481, i32 %482, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %483, i32 %484, i32 %487, i32 %490)
  store i32 1, i32* %5, align 4
  br label %492

492:                                              ; preds = %479, %445
  %493 = load i32, i32* %5, align 4
  ret i32 %493
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @memset(%struct.ulp_bde64*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_gid_ft(%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local void @lpfc_cmpl_ct_cmd_gff_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.1*, %struct.lpfc_iocbq.1*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rft_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.2*, %struct.lpfc_iocbq.2*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rnn_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.3*, %struct.lpfc_iocbq.3*) #1

declare dso_local i32 @lpfc_vport_symbolic_port_name(%struct.lpfc_vport*, i32, i64) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rspn_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.4*, %struct.lpfc_iocbq.4*) #1

declare dso_local i32 @lpfc_vport_symbolic_node_name(%struct.lpfc_vport*, i32, i64) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rsnn_nn(%struct.lpfc_hba*, %struct.lpfc_iocbq.5*, %struct.lpfc_iocbq.5*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_da_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.6*, %struct.lpfc_iocbq.6*) #1

declare dso_local void @lpfc_cmpl_ct_cmd_rff_id(%struct.lpfc_hba*, %struct.lpfc_iocbq.7*, %struct.lpfc_iocbq.7*) #1

declare dso_local i32 @lpfc_ct_cmd(%struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_nodelist*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.8*, %struct.lpfc_iocbq.8*)*, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
