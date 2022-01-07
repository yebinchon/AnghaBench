; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.TYPE_28__, i32, i32, %struct.lpfc_hba* }
%struct.TYPE_28__ = type { i64, i64 }
%struct.lpfc_hba = type { i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_dmabuf = type { i32, i8*, i32 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_27__, %struct.TYPE_26__, i32, i32, %struct.TYPE_39__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i8* }
%struct.TYPE_39__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i32 }
%struct.ulp_bde64 = type { %struct.TYPE_30__, i8*, i8* }
%struct.TYPE_30__ = type { i8*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_41__, %struct.TYPE_40__ }
%struct.TYPE_41__ = type { i64, i8* }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_46__, %struct.TYPE_44__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i8*, i8* }
%struct.TYPE_44__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*, i32, i8*, i64, i32, i32, i64 }
%struct.lpfc_iocbq = type opaque
%struct.serv_parm = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_38__ = type { i8*, i8*, i8*, i8* }
%struct.lpfc_iocbq.1 = type opaque
%struct.lpfc_iocbq.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0218 FDMI Request Data: x%x x%x x%x\0A\00", align 1
@SLI_CT_REVISION = common dso_local global i32 0, align 4
@SLI_CT_MANAGEMENT_SERVICE = common dso_local global i32 0, align 4
@SLI_CT_FDMI_Subtypes = common dso_local global i32 0, align 4
@FOURBYTES = common dso_local global i32 0, align 4
@NODE_NAME = common dso_local global i32 0, align 4
@MANUFACTURER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Emulex Corporation\00", align 1
@SERIAL_NUMBER = common dso_local global i32 0, align 4
@MODEL = common dso_local global i32 0, align 4
@MODEL_DESCRIPTION = common dso_local global i32 0, align 4
@HARDWARE_VERSION = common dso_local global i32 0, align 4
@DRIVER_VERSION = common dso_local global i32 0, align 4
@lpfc_release_version = common dso_local global i8* null, align 8
@OPTION_ROM_VERSION = common dso_local global i32 0, align 4
@FIRMWARE_VERSION = common dso_local global i32 0, align 4
@OS_NAME_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@MAX_CT_PAYLOAD_LEN = common dso_local global i32 0, align 4
@GID_REQUEST_SZ = common dso_local global i32 0, align 4
@SUPPORTED_FC4_TYPES = common dso_local global i32 0, align 4
@SUPPORTED_SPEED = common dso_local global i32 0, align 4
@LMT_16Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_16GBIT = common dso_local global i32 0, align 4
@LMT_10Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_10GBIT = common dso_local global i32 0, align 4
@LMT_8Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_8GBIT = common dso_local global i32 0, align 4
@LMT_4Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_4GBIT = common dso_local global i32 0, align 4
@LMT_2Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_2GBIT = common dso_local global i32 0, align 4
@LMT_1Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_1GBIT = common dso_local global i32 0, align 4
@PORT_SPEED = common dso_local global i32 0, align 4
@HBA_PORTSPEED_UNKNOWN = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@OS_DEVICE_NAME = common dso_local global i32 0, align 4
@LPFC_DRIVER_NAME = common dso_local global i8* null, align 8
@HOST_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FC_MAX_NS_RSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"0244 Issue FDMI request failed Data: x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_fdmi_cmd(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_sli_ct_request*, align 8
  %12 = alloca %struct.ulp_bde64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca %struct.TYPE_36__*, align 8
  %19 = alloca void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, align 8
  %20 = alloca %struct.TYPE_31__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_31__*, align 8
  %26 = alloca %struct.serv_parm*, align 8
  %27 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 4
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %29, align 8
  store %struct.lpfc_hba* %30, %struct.lpfc_hba** %8, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %31)
  store %struct.lpfc_dmabuf* %32, %struct.lpfc_dmabuf** %9, align 8
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %34 = icmp ne %struct.lpfc_dmabuf* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %1286

36:                                               ; preds = %3
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %39 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %38, i32 0, i32 0
  %40 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %37, i32 0, i32* %39)
  %41 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %42 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %44 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %1283

48:                                               ; preds = %36
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %49)
  store %struct.lpfc_dmabuf* %50, %struct.lpfc_dmabuf** %10, align 8
  %51 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %52 = icmp ne %struct.lpfc_dmabuf* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %1274

54:                                               ; preds = %48
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %56 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %57 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %56, i32 0, i32 0
  %58 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %55, i32 0, i32* %57)
  %59 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %60 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %62 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  br label %1271

66:                                               ; preds = %54
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 2
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %71 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %70, i32 0, i32 2
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load i32, i32* @LOG_DISCOVERY, align 4
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %80 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81, i32 %82)
  %84 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %85 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = bitcast i8* %86 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %87, %struct.lpfc_sli_ct_request** %11, align 8
  %88 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %89 = call i32 @memset(%struct.lpfc_sli_ct_request* %88, i32 0, i32 48)
  %90 = load i32, i32* @SLI_CT_REVISION, align 4
  %91 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %92 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 8
  %95 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %96 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @SLI_CT_MANAGEMENT_SERVICE, align 4
  %100 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %101 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @SLI_CT_FDMI_Subtypes, align 4
  %103 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %104 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  switch i32 %105, label %1214 [
    i32 129, label %106
    i32 128, label %739
    i32 131, label %1162
    i32 130, label %1188
  ]

106:                                              ; preds = %66
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 6
  store %struct.TYPE_31__* %108, %struct.TYPE_31__** %20, align 8
  %109 = call i8* @be16_to_cpu(i32 129)
  %110 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %111 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  %114 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %115 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %119 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = bitcast i32* %120 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %121, %struct.TYPE_33__** %14, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %123, i32 0, i32 0
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %126 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 0
  %128 = call i32 @memcpy(i64* %124, i64* %127, i32 4)
  %129 = call i8* @be32_to_cpu(i32 1)
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %134, i32 0, i32 0
  %136 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %137 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = call i32 @memcpy(i64* %135, i64* %138, i32 4)
  %140 = load i32, i32* @FOURBYTES, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 8, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %145 = bitcast %struct.TYPE_33__* %144 to i64*
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = bitcast i64* %148 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %149, %struct.TYPE_37__** %17, align 8
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 0
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* @FOURBYTES, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %13, align 4
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %156 = bitcast %struct.TYPE_33__* %155 to i64*
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = bitcast i64* %159 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %160, %struct.TYPE_36__** %18, align 8
  %161 = load i32, i32* @NODE_NAME, align 4
  %162 = call i8* @be16_to_cpu(i32 %161)
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %165, i32 0, i32 1
  store i8* %162, i8** %166, align 8
  %167 = load i32, i32* @FOURBYTES, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = call i8* @be16_to_cpu(i32 %170)
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %174, i32 0, i32 0
  store i8* %171, i8** %175, align 8
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %177, i32 0, i32 16
  %179 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %180 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 1
  %182 = call i32 @memcpy(i64* %178, i64* %181, i32 4)
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* @FOURBYTES, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 %188, 4
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = add i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %13, align 4
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %195 = bitcast %struct.TYPE_33__* %194 to i64*
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = bitcast i64* %198 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %199, %struct.TYPE_36__** %18, align 8
  %200 = load i32, i32* @MANUFACTURER, align 4
  %201 = call i8* @be16_to_cpu(i32 %200)
  %202 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %204, i32 0, i32 1
  store i8* %201, i8** %205, align 8
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strcpy(i8* %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @strlen(i8* %214)
  store i32 %215, i32* %24, align 4
  %216 = load i32, i32* %24, align 4
  %217 = and i32 %216, 3
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %106
  %220 = load i32, i32* %24, align 4
  %221 = and i32 %220, 3
  %222 = sub nsw i32 4, %221
  br label %224

223:                                              ; preds = %106
  br label %224

224:                                              ; preds = %223, %219
  %225 = phi i32 [ %222, %219 ], [ 4, %223 ]
  %226 = load i32, i32* %24, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %24, align 4
  %228 = load i32, i32* @FOURBYTES, align 4
  %229 = load i32, i32* %24, align 4
  %230 = add nsw i32 %228, %229
  %231 = call i8* @be16_to_cpu(i32 %230)
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %234, i32 0, i32 0
  store i8* %231, i8** %235, align 8
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* @FOURBYTES, align 4
  %241 = load i32, i32* %24, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %13, align 4
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %246 = bitcast %struct.TYPE_33__* %245 to i64*
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = bitcast i64* %249 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %250, %struct.TYPE_36__** %18, align 8
  %251 = load i32, i32* @SERIAL_NUMBER, align 4
  %252 = call i8* @be16_to_cpu(i32 %251)
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %255, i32 0, i32 1
  store i8* %252, i8** %256, align 8
  %257 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %262 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @strcpy(i8* %260, i8* %263)
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @strlen(i8* %268)
  store i32 %269, i32* %24, align 4
  %270 = load i32, i32* %24, align 4
  %271 = and i32 %270, 3
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %224
  %274 = load i32, i32* %24, align 4
  %275 = and i32 %274, 3
  %276 = sub nsw i32 4, %275
  br label %278

277:                                              ; preds = %224
  br label %278

278:                                              ; preds = %277, %273
  %279 = phi i32 [ %276, %273 ], [ 4, %277 ]
  %280 = load i32, i32* %24, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %24, align 4
  %282 = load i32, i32* @FOURBYTES, align 4
  %283 = load i32, i32* %24, align 4
  %284 = add nsw i32 %282, %283
  %285 = call i8* @be16_to_cpu(i32 %284)
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %288, i32 0, i32 0
  store i8* %285, i8** %289, align 8
  %290 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load i32, i32* @FOURBYTES, align 4
  %295 = load i32, i32* %24, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %13, align 4
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %300 = bitcast %struct.TYPE_33__* %299 to i64*
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = bitcast i64* %303 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %304, %struct.TYPE_36__** %18, align 8
  %305 = load i32, i32* @MODEL, align 4
  %306 = call i8* @be16_to_cpu(i32 %305)
  %307 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %308 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %309, i32 0, i32 1
  store i8* %306, i8** %310, align 8
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %312, i32 0, i32 2
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %316 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @strcpy(i8* %314, i8* %317)
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @strlen(i8* %322)
  store i32 %323, i32* %24, align 4
  %324 = load i32, i32* %24, align 4
  %325 = and i32 %324, 3
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %278
  %328 = load i32, i32* %24, align 4
  %329 = and i32 %328, 3
  %330 = sub nsw i32 4, %329
  br label %332

331:                                              ; preds = %278
  br label %332

332:                                              ; preds = %331, %327
  %333 = phi i32 [ %330, %327 ], [ 4, %331 ]
  %334 = load i32, i32* %24, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %24, align 4
  %336 = load i32, i32* @FOURBYTES, align 4
  %337 = load i32, i32* %24, align 4
  %338 = add nsw i32 %336, %337
  %339 = call i8* @be16_to_cpu(i32 %338)
  %340 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %341 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %342, i32 0, i32 0
  store i8* %339, i8** %343, align 8
  %344 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 4
  %348 = load i32, i32* @FOURBYTES, align 4
  %349 = load i32, i32* %24, align 4
  %350 = add nsw i32 %348, %349
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %351, %350
  store i32 %352, i32* %13, align 4
  %353 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %354 = bitcast %struct.TYPE_33__* %353 to i64*
  %355 = load i32, i32* %13, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = bitcast i64* %357 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %358, %struct.TYPE_36__** %18, align 8
  %359 = load i32, i32* @MODEL_DESCRIPTION, align 4
  %360 = call i8* @be16_to_cpu(i32 %359)
  %361 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %362 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %363, i32 0, i32 1
  store i8* %360, i8** %364, align 8
  %365 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %366 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %366, i32 0, i32 3
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %370 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %369, i32 0, i32 2
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @strcpy(i8* %368, i8* %371)
  %373 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %374, i32 0, i32 3
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @strlen(i8* %376)
  store i32 %377, i32* %24, align 4
  %378 = load i32, i32* %24, align 4
  %379 = and i32 %378, 3
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %332
  %382 = load i32, i32* %24, align 4
  %383 = and i32 %382, 3
  %384 = sub nsw i32 4, %383
  br label %386

385:                                              ; preds = %332
  br label %386

386:                                              ; preds = %385, %381
  %387 = phi i32 [ %384, %381 ], [ 4, %385 ]
  %388 = load i32, i32* %24, align 4
  %389 = add nsw i32 %388, %387
  store i32 %389, i32* %24, align 4
  %390 = load i32, i32* @FOURBYTES, align 4
  %391 = load i32, i32* %24, align 4
  %392 = add nsw i32 %390, %391
  %393 = call i8* @be16_to_cpu(i32 %392)
  %394 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %395 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %396, i32 0, i32 0
  store i8* %393, i8** %397, align 8
  %398 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %399 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 4
  %402 = load i32, i32* @FOURBYTES, align 4
  %403 = load i32, i32* %24, align 4
  %404 = add nsw i32 %402, %403
  %405 = load i32, i32* %13, align 4
  %406 = add nsw i32 %405, %404
  store i32 %406, i32* %13, align 4
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %408 = bitcast %struct.TYPE_33__* %407 to i64*
  %409 = load i32, i32* %13, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  %412 = bitcast i64* %411 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %412, %struct.TYPE_36__** %18, align 8
  %413 = load i32, i32* @HARDWARE_VERSION, align 4
  %414 = call i8* @be16_to_cpu(i32 %413)
  %415 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %416 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %417, i32 0, i32 1
  store i8* %414, i8** %418, align 8
  %419 = load i32, i32* @FOURBYTES, align 4
  %420 = add nsw i32 %419, 8
  %421 = call i8* @be16_to_cpu(i32 %420)
  %422 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %423 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %424, i32 0, i32 0
  store i8* %421, i8** %425, align 8
  %426 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %427 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  store i32 %429, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %430

430:                                              ; preds = %468, %386
  %431 = load i32, i32* %21, align 4
  %432 = icmp slt i32 %431, 8
  br i1 %432, label %433, label %471

433:                                              ; preds = %430
  %434 = load i32, i32* %23, align 4
  %435 = and i32 %434, 15
  store i32 %435, i32* %22, align 4
  %436 = load i32, i32* %22, align 4
  %437 = icmp sle i32 %436, 9
  br i1 %437, label %438, label %451

438:                                              ; preds = %433
  %439 = load i32, i32* %22, align 4
  %440 = sext i32 %439 to i64
  %441 = add nsw i64 48, %440
  %442 = trunc i64 %441 to i8
  %443 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %444 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %444, i32 0, i32 4
  %446 = load i8*, i8** %445, align 8
  %447 = load i32, i32* %21, align 4
  %448 = sub nsw i32 7, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %446, i64 %449
  store i8 %442, i8* %450, align 1
  br label %465

451:                                              ; preds = %433
  %452 = load i32, i32* %22, align 4
  %453 = sub nsw i32 %452, 10
  %454 = sext i32 %453 to i64
  %455 = add nsw i64 97, %454
  %456 = trunc i64 %455 to i8
  %457 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %458 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %458, i32 0, i32 4
  %460 = load i8*, i8** %459, align 8
  %461 = load i32, i32* %21, align 4
  %462 = sub nsw i32 7, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* %460, i64 %463
  store i8 %456, i8* %464, align 1
  br label %465

465:                                              ; preds = %451, %438
  %466 = load i32, i32* %23, align 4
  %467 = ashr i32 %466, 4
  store i32 %467, i32* %23, align 4
  br label %468

468:                                              ; preds = %465
  %469 = load i32, i32* %21, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %21, align 4
  br label %430

471:                                              ; preds = %430
  %472 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %473 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %473, align 4
  %476 = load i32, i32* @FOURBYTES, align 4
  %477 = add nsw i32 %476, 8
  %478 = load i32, i32* %13, align 4
  %479 = add nsw i32 %478, %477
  store i32 %479, i32* %13, align 4
  %480 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %481 = bitcast %struct.TYPE_33__* %480 to i64*
  %482 = load i32, i32* %13, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i64, i64* %481, i64 %483
  %485 = bitcast i64* %484 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %485, %struct.TYPE_36__** %18, align 8
  %486 = load i32, i32* @DRIVER_VERSION, align 4
  %487 = call i8* @be16_to_cpu(i32 %486)
  %488 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %489 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %490, i32 0, i32 1
  store i8* %487, i8** %491, align 8
  %492 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %493 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %493, i32 0, i32 5
  %495 = load i8*, i8** %494, align 8
  %496 = load i8*, i8** @lpfc_release_version, align 8
  %497 = call i32 @strcpy(i8* %495, i8* %496)
  %498 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %499 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %499, i32 0, i32 5
  %501 = load i8*, i8** %500, align 8
  %502 = call i32 @strlen(i8* %501)
  store i32 %502, i32* %24, align 4
  %503 = load i32, i32* %24, align 4
  %504 = and i32 %503, 3
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %471
  %507 = load i32, i32* %24, align 4
  %508 = and i32 %507, 3
  %509 = sub nsw i32 4, %508
  br label %511

510:                                              ; preds = %471
  br label %511

511:                                              ; preds = %510, %506
  %512 = phi i32 [ %509, %506 ], [ 4, %510 ]
  %513 = load i32, i32* %24, align 4
  %514 = add nsw i32 %513, %512
  store i32 %514, i32* %24, align 4
  %515 = load i32, i32* @FOURBYTES, align 4
  %516 = load i32, i32* %24, align 4
  %517 = add nsw i32 %515, %516
  %518 = call i8* @be16_to_cpu(i32 %517)
  %519 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %520 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %521, i32 0, i32 0
  store i8* %518, i8** %522, align 8
  %523 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %524 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %524, align 4
  %527 = load i32, i32* @FOURBYTES, align 4
  %528 = load i32, i32* %24, align 4
  %529 = add nsw i32 %527, %528
  %530 = load i32, i32* %13, align 4
  %531 = add nsw i32 %530, %529
  store i32 %531, i32* %13, align 4
  %532 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %533 = bitcast %struct.TYPE_33__* %532 to i64*
  %534 = load i32, i32* %13, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i64, i64* %533, i64 %535
  %537 = bitcast i64* %536 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %537, %struct.TYPE_36__** %18, align 8
  %538 = load i32, i32* @OPTION_ROM_VERSION, align 4
  %539 = call i8* @be16_to_cpu(i32 %538)
  %540 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %541 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %542, i32 0, i32 1
  store i8* %539, i8** %543, align 8
  %544 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %545 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %545, i32 0, i32 6
  %547 = load i8*, i8** %546, align 8
  %548 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %549 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %548, i32 0, i32 3
  %550 = load i8*, i8** %549, align 8
  %551 = call i32 @strcpy(i8* %547, i8* %550)
  %552 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %553 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %553, i32 0, i32 6
  %555 = load i8*, i8** %554, align 8
  %556 = call i32 @strlen(i8* %555)
  store i32 %556, i32* %24, align 4
  %557 = load i32, i32* %24, align 4
  %558 = and i32 %557, 3
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %564

560:                                              ; preds = %511
  %561 = load i32, i32* %24, align 4
  %562 = and i32 %561, 3
  %563 = sub nsw i32 4, %562
  br label %565

564:                                              ; preds = %511
  br label %565

565:                                              ; preds = %564, %560
  %566 = phi i32 [ %563, %560 ], [ 4, %564 ]
  %567 = load i32, i32* %24, align 4
  %568 = add nsw i32 %567, %566
  store i32 %568, i32* %24, align 4
  %569 = load i32, i32* @FOURBYTES, align 4
  %570 = load i32, i32* %24, align 4
  %571 = add nsw i32 %569, %570
  %572 = call i8* @be16_to_cpu(i32 %571)
  %573 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %574 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %575, i32 0, i32 0
  store i8* %572, i8** %576, align 8
  %577 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %578 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %578, align 4
  %581 = load i32, i32* @FOURBYTES, align 4
  %582 = load i32, i32* %24, align 4
  %583 = add nsw i32 %581, %582
  %584 = load i32, i32* %13, align 4
  %585 = add nsw i32 %584, %583
  store i32 %585, i32* %13, align 4
  %586 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %587 = bitcast %struct.TYPE_33__* %586 to i64*
  %588 = load i32, i32* %13, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i64, i64* %587, i64 %589
  %591 = bitcast i64* %590 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %591, %struct.TYPE_36__** %18, align 8
  %592 = load i32, i32* @FIRMWARE_VERSION, align 4
  %593 = call i8* @be16_to_cpu(i32 %592)
  %594 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %595 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %596, i32 0, i32 1
  store i8* %593, i8** %597, align 8
  %598 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %599 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %600 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %600, i32 0, i32 7
  %602 = load i8*, i8** %601, align 8
  %603 = call i32 @lpfc_decode_firmware_rev(%struct.lpfc_hba* %598, i8* %602, i32 1)
  %604 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %605 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %605, i32 0, i32 7
  %607 = load i8*, i8** %606, align 8
  %608 = call i32 @strlen(i8* %607)
  store i32 %608, i32* %24, align 4
  %609 = load i32, i32* %24, align 4
  %610 = and i32 %609, 3
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %616

612:                                              ; preds = %565
  %613 = load i32, i32* %24, align 4
  %614 = and i32 %613, 3
  %615 = sub nsw i32 4, %614
  br label %617

616:                                              ; preds = %565
  br label %617

617:                                              ; preds = %616, %612
  %618 = phi i32 [ %615, %612 ], [ 4, %616 ]
  %619 = load i32, i32* %24, align 4
  %620 = add nsw i32 %619, %618
  store i32 %620, i32* %24, align 4
  %621 = load i32, i32* @FOURBYTES, align 4
  %622 = load i32, i32* %24, align 4
  %623 = add nsw i32 %621, %622
  %624 = call i8* @be16_to_cpu(i32 %623)
  %625 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %626 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %627, i32 0, i32 0
  store i8* %624, i8** %628, align 8
  %629 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %630 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %630, align 4
  %633 = load i32, i32* @FOURBYTES, align 4
  %634 = load i32, i32* %24, align 4
  %635 = add nsw i32 %633, %634
  %636 = load i32, i32* %13, align 4
  %637 = add nsw i32 %636, %635
  store i32 %637, i32* %13, align 4
  %638 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %639 = bitcast %struct.TYPE_33__* %638 to i64*
  %640 = load i32, i32* %13, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i64, i64* %639, i64 %641
  %643 = bitcast i64* %642 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %643, %struct.TYPE_36__** %18, align 8
  %644 = load i32, i32* @OS_NAME_VERSION, align 4
  %645 = call i8* @be16_to_cpu(i32 %644)
  %646 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %647 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %648, i32 0, i32 1
  store i8* %645, i8** %649, align 8
  %650 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %651 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %651, i32 0, i32 8
  %653 = load i8*, i8** %652, align 8
  %654 = call %struct.TYPE_38__* (...) @init_utsname()
  %655 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %654, i32 0, i32 0
  %656 = load i8*, i8** %655, align 8
  %657 = call %struct.TYPE_38__* (...) @init_utsname()
  %658 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %657, i32 0, i32 1
  %659 = load i8*, i8** %658, align 8
  %660 = call %struct.TYPE_38__* (...) @init_utsname()
  %661 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %660, i32 0, i32 2
  %662 = load i8*, i8** %661, align 8
  %663 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %653, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %656, i8* %659, i8* %662)
  %664 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %665 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %665, i32 0, i32 8
  %667 = load i8*, i8** %666, align 8
  %668 = call i32 @strlen(i8* %667)
  store i32 %668, i32* %24, align 4
  %669 = load i32, i32* %24, align 4
  %670 = and i32 %669, 3
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %676

672:                                              ; preds = %617
  %673 = load i32, i32* %24, align 4
  %674 = and i32 %673, 3
  %675 = sub nsw i32 4, %674
  br label %677

676:                                              ; preds = %617
  br label %677

677:                                              ; preds = %676, %672
  %678 = phi i32 [ %675, %672 ], [ 4, %676 ]
  %679 = load i32, i32* %24, align 4
  %680 = add nsw i32 %679, %678
  store i32 %680, i32* %24, align 4
  %681 = load i32, i32* @FOURBYTES, align 4
  %682 = load i32, i32* %24, align 4
  %683 = add nsw i32 %681, %682
  %684 = call i8* @be16_to_cpu(i32 %683)
  %685 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %686 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %687, i32 0, i32 0
  store i8* %684, i8** %688, align 8
  %689 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %690 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %690, align 4
  %693 = load i32, i32* @FOURBYTES, align 4
  %694 = load i32, i32* %24, align 4
  %695 = add nsw i32 %693, %694
  %696 = load i32, i32* %13, align 4
  %697 = add nsw i32 %696, %695
  store i32 %697, i32* %13, align 4
  %698 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %699 = bitcast %struct.TYPE_33__* %698 to i64*
  %700 = load i32, i32* %13, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i64, i64* %699, i64 %701
  %703 = bitcast i64* %702 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %703, %struct.TYPE_36__** %18, align 8
  %704 = load i32, i32* @MAX_CT_PAYLOAD_LEN, align 4
  %705 = call i8* @be16_to_cpu(i32 %704)
  %706 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %707 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %706, i32 0, i32 0
  %708 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %707, i32 0, i32 0
  %709 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %708, i32 0, i32 1
  store i8* %705, i8** %709, align 8
  %710 = load i32, i32* @FOURBYTES, align 4
  %711 = add nsw i32 %710, 4
  %712 = call i8* @be16_to_cpu(i32 %711)
  %713 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %714 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %715, i32 0, i32 0
  store i8* %712, i8** %716, align 8
  %717 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %718 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %718, i32 0, i32 9
  store i32 266240, i32* %719, align 8
  %720 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %721 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %721, align 4
  %724 = load i32, i32* @FOURBYTES, align 4
  %725 = add nsw i32 %724, 4
  %726 = load i32, i32* %13, align 4
  %727 = add nsw i32 %726, %725
  store i32 %727, i32* %13, align 4
  %728 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %729 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 4
  %731 = call i8* @be32_to_cpu(i32 %730)
  %732 = ptrtoint i8* %731 to i32
  %733 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %734 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %733, i32 0, i32 0
  store i32 %732, i32* %734, align 4
  %735 = load i32, i32* @GID_REQUEST_SZ, align 4
  %736 = sub nsw i32 %735, 4
  %737 = load i32, i32* %13, align 4
  %738 = add nsw i32 %736, %737
  store i32 %738, i32* %13, align 4
  br label %1214

739:                                              ; preds = %66
  %740 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %741 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %740, i32 0, i32 6
  store %struct.TYPE_31__* %741, %struct.TYPE_31__** %25, align 8
  %742 = call i8* @be16_to_cpu(i32 128)
  %743 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %744 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %744, i32 0, i32 0
  %746 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %745, i32 0, i32 1
  store i8* %742, i8** %746, align 8
  %747 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %748 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %747, i32 0, i32 1
  %749 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %748, i32 0, i32 0
  %750 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %749, i32 0, i32 0
  store i32 0, i32* %750, align 8
  %751 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %752 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %751, i32 0, i32 0
  %753 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %752, i32 0, i32 0
  %754 = bitcast i32* %753 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %754, %struct.TYPE_32__** %16, align 8
  %755 = load i32, i32* @FOURBYTES, align 4
  %756 = sext i32 %755 to i64
  %757 = add i64 4, %756
  %758 = trunc i64 %757 to i32
  store i32 %758, i32* %13, align 4
  %759 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %760 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %759, i32 0, i32 1
  %761 = bitcast i32* %760 to i64*
  %762 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %763 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %762, i32 0, i32 1
  %764 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %763, i32 0, i32 0
  %765 = call i32 @memcpy(i64* %761, i64* %764, i32 4)
  %766 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %767 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %767, i32 0, i32 0
  store i32 0, i32* %768, align 4
  %769 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %770 = bitcast %struct.TYPE_32__* %769 to i64*
  %771 = load i32, i32* %13, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds i64, i64* %770, i64 %772
  %774 = bitcast i64* %773 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %774, %struct.TYPE_36__** %18, align 8
  %775 = load i32, i32* @SUPPORTED_FC4_TYPES, align 4
  %776 = call i8* @be16_to_cpu(i32 %775)
  %777 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %778 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %777, i32 0, i32 0
  %779 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %778, i32 0, i32 0
  %780 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %779, i32 0, i32 1
  store i8* %776, i8** %780, align 8
  %781 = load i32, i32* @FOURBYTES, align 4
  %782 = add nsw i32 %781, 32
  %783 = call i8* @be16_to_cpu(i32 %782)
  %784 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %785 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %784, i32 0, i32 0
  %786 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %785, i32 0, i32 0
  %787 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %786, i32 0, i32 0
  store i8* %783, i8** %787, align 8
  %788 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %789 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %788, i32 0, i32 1
  %790 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %789, i32 0, i32 10
  %791 = load i32*, i32** %790, align 8
  %792 = getelementptr inbounds i32, i32* %791, i64 2
  store i32 1, i32* %792, align 4
  %793 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %794 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %794, i32 0, i32 10
  %796 = load i32*, i32** %795, align 8
  %797 = getelementptr inbounds i32, i32* %796, i64 7
  store i32 1, i32* %797, align 4
  %798 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %799 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %798, i32 0, i32 0
  %800 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 4
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %800, align 4
  %803 = load i32, i32* @FOURBYTES, align 4
  %804 = add nsw i32 %803, 32
  %805 = load i32, i32* %13, align 4
  %806 = add nsw i32 %805, %804
  store i32 %806, i32* %13, align 4
  %807 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %808 = bitcast %struct.TYPE_32__* %807 to i64*
  %809 = load i32, i32* %13, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i64, i64* %808, i64 %810
  %812 = bitcast i64* %811 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %812, %struct.TYPE_36__** %18, align 8
  %813 = load i32, i32* @SUPPORTED_SPEED, align 4
  %814 = call i8* @be16_to_cpu(i32 %813)
  %815 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %816 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %815, i32 0, i32 0
  %817 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %816, i32 0, i32 0
  %818 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %817, i32 0, i32 1
  store i8* %814, i8** %818, align 8
  %819 = load i32, i32* @FOURBYTES, align 4
  %820 = add nsw i32 %819, 4
  %821 = call i8* @be16_to_cpu(i32 %820)
  %822 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %823 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %822, i32 0, i32 0
  %824 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %823, i32 0, i32 0
  %825 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %824, i32 0, i32 0
  store i8* %821, i8** %825, align 8
  %826 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %827 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %826, i32 0, i32 1
  %828 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %827, i32 0, i32 15
  store i32 0, i32* %828, align 4
  %829 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %830 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %829, i32 0, i32 4
  %831 = load i32, i32* %830, align 8
  %832 = load i32, i32* @LMT_16Gb, align 4
  %833 = and i32 %831, %832
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %835, label %842

835:                                              ; preds = %739
  %836 = load i32, i32* @HBA_PORTSPEED_16GBIT, align 4
  %837 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %838 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %838, i32 0, i32 15
  %840 = load i32, i32* %839, align 4
  %841 = or i32 %840, %836
  store i32 %841, i32* %839, align 4
  br label %842

842:                                              ; preds = %835, %739
  %843 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %844 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %843, i32 0, i32 4
  %845 = load i32, i32* %844, align 8
  %846 = load i32, i32* @LMT_10Gb, align 4
  %847 = and i32 %845, %846
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %856

849:                                              ; preds = %842
  %850 = load i32, i32* @HBA_PORTSPEED_10GBIT, align 4
  %851 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %852 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %851, i32 0, i32 1
  %853 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %852, i32 0, i32 15
  %854 = load i32, i32* %853, align 4
  %855 = or i32 %854, %850
  store i32 %855, i32* %853, align 4
  br label %856

856:                                              ; preds = %849, %842
  %857 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %858 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %857, i32 0, i32 4
  %859 = load i32, i32* %858, align 8
  %860 = load i32, i32* @LMT_8Gb, align 4
  %861 = and i32 %859, %860
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %870

863:                                              ; preds = %856
  %864 = load i32, i32* @HBA_PORTSPEED_8GBIT, align 4
  %865 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %866 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %866, i32 0, i32 15
  %868 = load i32, i32* %867, align 4
  %869 = or i32 %868, %864
  store i32 %869, i32* %867, align 4
  br label %870

870:                                              ; preds = %863, %856
  %871 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %872 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %871, i32 0, i32 4
  %873 = load i32, i32* %872, align 8
  %874 = load i32, i32* @LMT_4Gb, align 4
  %875 = and i32 %873, %874
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %884

877:                                              ; preds = %870
  %878 = load i32, i32* @HBA_PORTSPEED_4GBIT, align 4
  %879 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %880 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %879, i32 0, i32 1
  %881 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %880, i32 0, i32 15
  %882 = load i32, i32* %881, align 4
  %883 = or i32 %882, %878
  store i32 %883, i32* %881, align 4
  br label %884

884:                                              ; preds = %877, %870
  %885 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %886 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %885, i32 0, i32 4
  %887 = load i32, i32* %886, align 8
  %888 = load i32, i32* @LMT_2Gb, align 4
  %889 = and i32 %887, %888
  %890 = icmp ne i32 %889, 0
  br i1 %890, label %891, label %898

891:                                              ; preds = %884
  %892 = load i32, i32* @HBA_PORTSPEED_2GBIT, align 4
  %893 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %894 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %893, i32 0, i32 1
  %895 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %894, i32 0, i32 15
  %896 = load i32, i32* %895, align 4
  %897 = or i32 %896, %892
  store i32 %897, i32* %895, align 4
  br label %898

898:                                              ; preds = %891, %884
  %899 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %900 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %899, i32 0, i32 4
  %901 = load i32, i32* %900, align 8
  %902 = load i32, i32* @LMT_1Gb, align 4
  %903 = and i32 %901, %902
  %904 = icmp ne i32 %903, 0
  br i1 %904, label %905, label %912

905:                                              ; preds = %898
  %906 = load i32, i32* @HBA_PORTSPEED_1GBIT, align 4
  %907 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %908 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %907, i32 0, i32 1
  %909 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %908, i32 0, i32 15
  %910 = load i32, i32* %909, align 4
  %911 = or i32 %910, %906
  store i32 %911, i32* %909, align 4
  br label %912

912:                                              ; preds = %905, %898
  %913 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %914 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %913, i32 0, i32 0
  %915 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %914, i32 0, i32 0
  %916 = load i32, i32* %915, align 4
  %917 = add nsw i32 %916, 1
  store i32 %917, i32* %915, align 4
  %918 = load i32, i32* @FOURBYTES, align 4
  %919 = add nsw i32 %918, 4
  %920 = load i32, i32* %13, align 4
  %921 = add nsw i32 %920, %919
  store i32 %921, i32* %13, align 4
  %922 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %923 = bitcast %struct.TYPE_32__* %922 to i64*
  %924 = load i32, i32* %13, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i64, i64* %923, i64 %925
  %927 = bitcast i64* %926 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %927, %struct.TYPE_36__** %18, align 8
  %928 = load i32, i32* @PORT_SPEED, align 4
  %929 = call i8* @be16_to_cpu(i32 %928)
  %930 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %931 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %930, i32 0, i32 0
  %932 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %931, i32 0, i32 0
  %933 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %932, i32 0, i32 1
  store i8* %929, i8** %933, align 8
  %934 = load i32, i32* @FOURBYTES, align 4
  %935 = add nsw i32 %934, 4
  %936 = call i8* @be16_to_cpu(i32 %935)
  %937 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %938 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %937, i32 0, i32 0
  %939 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %938, i32 0, i32 0
  %940 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %939, i32 0, i32 0
  store i8* %936, i8** %940, align 8
  %941 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %942 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %941, i32 0, i32 5
  %943 = load i32, i32* %942, align 4
  switch i32 %943, label %974 [
    i32 135, label %944
    i32 134, label %949
    i32 133, label %954
    i32 132, label %959
    i32 137, label %964
    i32 136, label %969
  ]

944:                                              ; preds = %912
  %945 = load i32, i32* @HBA_PORTSPEED_1GBIT, align 4
  %946 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %947 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %946, i32 0, i32 1
  %948 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %947, i32 0, i32 14
  store i32 %945, i32* %948, align 8
  br label %979

949:                                              ; preds = %912
  %950 = load i32, i32* @HBA_PORTSPEED_2GBIT, align 4
  %951 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %952 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %951, i32 0, i32 1
  %953 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %952, i32 0, i32 14
  store i32 %950, i32* %953, align 8
  br label %979

954:                                              ; preds = %912
  %955 = load i32, i32* @HBA_PORTSPEED_4GBIT, align 4
  %956 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %957 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %956, i32 0, i32 1
  %958 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %957, i32 0, i32 14
  store i32 %955, i32* %958, align 8
  br label %979

959:                                              ; preds = %912
  %960 = load i32, i32* @HBA_PORTSPEED_8GBIT, align 4
  %961 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %962 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %962, i32 0, i32 14
  store i32 %960, i32* %963, align 8
  br label %979

964:                                              ; preds = %912
  %965 = load i32, i32* @HBA_PORTSPEED_10GBIT, align 4
  %966 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %967 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %966, i32 0, i32 1
  %968 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %967, i32 0, i32 14
  store i32 %965, i32* %968, align 8
  br label %979

969:                                              ; preds = %912
  %970 = load i32, i32* @HBA_PORTSPEED_16GBIT, align 4
  %971 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %972 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %971, i32 0, i32 1
  %973 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %972, i32 0, i32 14
  store i32 %970, i32* %973, align 8
  br label %979

974:                                              ; preds = %912
  %975 = load i32, i32* @HBA_PORTSPEED_UNKNOWN, align 4
  %976 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %977 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %976, i32 0, i32 1
  %978 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %977, i32 0, i32 14
  store i32 %975, i32* %978, align 8
  br label %979

979:                                              ; preds = %974, %969, %964, %959, %954, %949, %944
  %980 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %981 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %980, i32 0, i32 0
  %982 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %981, i32 0, i32 0
  %983 = load i32, i32* %982, align 4
  %984 = add nsw i32 %983, 1
  store i32 %984, i32* %982, align 4
  %985 = load i32, i32* @FOURBYTES, align 4
  %986 = add nsw i32 %985, 4
  %987 = load i32, i32* %13, align 4
  %988 = add nsw i32 %987, %986
  store i32 %988, i32* %13, align 4
  %989 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %990 = bitcast %struct.TYPE_32__* %989 to i64*
  %991 = load i32, i32* %13, align 4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i64, i64* %990, i64 %992
  %994 = bitcast i64* %993 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %994, %struct.TYPE_36__** %18, align 8
  %995 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %996 = call i8* @be16_to_cpu(i32 %995)
  %997 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %998 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %997, i32 0, i32 0
  %999 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %998, i32 0, i32 0
  %1000 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %999, i32 0, i32 1
  store i8* %996, i8** %1000, align 8
  %1001 = load i32, i32* @FOURBYTES, align 4
  %1002 = add nsw i32 %1001, 4
  %1003 = call i8* @be16_to_cpu(i32 %1002)
  %1004 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1005 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1004, i32 0, i32 0
  %1006 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1005, i32 0, i32 0
  %1007 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1006, i32 0, i32 0
  store i8* %1003, i8** %1007, align 8
  %1008 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %1009 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %1008, i32 0, i32 1
  %1010 = bitcast %struct.TYPE_28__* %1009 to %struct.serv_parm*
  store %struct.serv_parm* %1010, %struct.serv_parm** %26, align 8
  %1011 = load %struct.serv_parm*, %struct.serv_parm** %26, align 8
  %1012 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %1011, i32 0, i32 0
  %1013 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1012, i32 0, i32 1
  %1014 = load i32, i32* %1013, align 4
  %1015 = shl i32 %1014, 8
  %1016 = load %struct.serv_parm*, %struct.serv_parm** %26, align 8
  %1017 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %1016, i32 0, i32 0
  %1018 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1017, i32 0, i32 0
  %1019 = load i32, i32* %1018, align 4
  %1020 = or i32 %1015, %1019
  %1021 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1022 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1021, i32 0, i32 1
  %1023 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1022, i32 0, i32 11
  store i32 %1020, i32* %1023, align 8
  %1024 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %1025 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1024, i32 0, i32 0
  %1026 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1025, i32 0, i32 0
  %1027 = load i32, i32* %1026, align 4
  %1028 = add nsw i32 %1027, 1
  store i32 %1028, i32* %1026, align 4
  %1029 = load i32, i32* @FOURBYTES, align 4
  %1030 = add nsw i32 %1029, 4
  %1031 = load i32, i32* %13, align 4
  %1032 = add nsw i32 %1031, %1030
  store i32 %1032, i32* %13, align 4
  %1033 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %1034 = bitcast %struct.TYPE_32__* %1033 to i64*
  %1035 = load i32, i32* %13, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds i64, i64* %1034, i64 %1036
  %1038 = bitcast i64* %1037 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %1038, %struct.TYPE_36__** %18, align 8
  %1039 = load i32, i32* @OS_DEVICE_NAME, align 4
  %1040 = call i8* @be16_to_cpu(i32 %1039)
  %1041 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1042 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1041, i32 0, i32 0
  %1043 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1042, i32 0, i32 0
  %1044 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1043, i32 0, i32 1
  store i8* %1040, i8** %1044, align 8
  %1045 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1046 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1046, i32 0, i32 13
  %1048 = load i64, i64* %1047, align 8
  %1049 = inttoptr i64 %1048 to i8*
  %1050 = load i8*, i8** @LPFC_DRIVER_NAME, align 8
  %1051 = call i32 @strcpy(i8* %1049, i8* %1050)
  %1052 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1053 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1052, i32 0, i32 1
  %1054 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1053, i32 0, i32 13
  %1055 = load i64, i64* %1054, align 8
  %1056 = inttoptr i64 %1055 to i8*
  %1057 = call i32 @strlen(i8* %1056)
  store i32 %1057, i32* %27, align 4
  %1058 = load i32, i32* %27, align 4
  %1059 = and i32 %1058, 3
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1061, label %1065

1061:                                             ; preds = %979
  %1062 = load i32, i32* %27, align 4
  %1063 = and i32 %1062, 3
  %1064 = sub nsw i32 4, %1063
  br label %1066

1065:                                             ; preds = %979
  br label %1066

1066:                                             ; preds = %1065, %1061
  %1067 = phi i32 [ %1064, %1061 ], [ 4, %1065 ]
  %1068 = load i32, i32* %27, align 4
  %1069 = add nsw i32 %1068, %1067
  store i32 %1069, i32* %27, align 4
  %1070 = load i32, i32* @FOURBYTES, align 4
  %1071 = load i32, i32* %27, align 4
  %1072 = add nsw i32 %1070, %1071
  %1073 = call i8* @be16_to_cpu(i32 %1072)
  %1074 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1075 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1074, i32 0, i32 0
  %1076 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1075, i32 0, i32 0
  %1077 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1076, i32 0, i32 0
  store i8* %1073, i8** %1077, align 8
  %1078 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %1079 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1078, i32 0, i32 0
  %1080 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1079, i32 0, i32 0
  %1081 = load i32, i32* %1080, align 4
  %1082 = add nsw i32 %1081, 1
  store i32 %1082, i32* %1080, align 4
  %1083 = load i32, i32* @FOURBYTES, align 4
  %1084 = load i32, i32* %27, align 4
  %1085 = add nsw i32 %1083, %1084
  %1086 = load i32, i32* %13, align 4
  %1087 = add nsw i32 %1086, %1085
  store i32 %1087, i32* %13, align 4
  %1088 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %1089 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %1088, i32 0, i32 0
  %1090 = load i32, i32* %1089, align 8
  %1091 = icmp eq i32 %1090, 2
  br i1 %1091, label %1092, label %1148

1092:                                             ; preds = %1066
  %1093 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %1094 = bitcast %struct.TYPE_32__* %1093 to i64*
  %1095 = load i32, i32* %13, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i64, i64* %1094, i64 %1096
  %1098 = bitcast i64* %1097 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %1098, %struct.TYPE_36__** %18, align 8
  %1099 = load i32, i32* @HOST_NAME, align 4
  %1100 = call i8* @be16_to_cpu(i32 %1099)
  %1101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1101, i32 0, i32 0
  %1103 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1102, i32 0, i32 0
  %1104 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1103, i32 0, i32 1
  store i8* %1100, i8** %1104, align 8
  %1105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1105, i32 0, i32 1
  %1107 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1106, i32 0, i32 12
  %1108 = load i8*, i8** %1107, align 8
  %1109 = call %struct.TYPE_38__* (...) @init_utsname()
  %1110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %1109, i32 0, i32 3
  %1111 = load i8*, i8** %1110, align 8
  %1112 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %1108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %1111)
  %1113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1113, i32 0, i32 1
  %1115 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1114, i32 0, i32 12
  %1116 = load i8*, i8** %1115, align 8
  %1117 = call i32 @strlen(i8* %1116)
  store i32 %1117, i32* %27, align 4
  %1118 = load i32, i32* %27, align 4
  %1119 = and i32 %1118, 3
  %1120 = icmp ne i32 %1119, 0
  br i1 %1120, label %1121, label %1125

1121:                                             ; preds = %1092
  %1122 = load i32, i32* %27, align 4
  %1123 = and i32 %1122, 3
  %1124 = sub nsw i32 4, %1123
  br label %1126

1125:                                             ; preds = %1092
  br label %1126

1126:                                             ; preds = %1125, %1121
  %1127 = phi i32 [ %1124, %1121 ], [ 4, %1125 ]
  %1128 = load i32, i32* %27, align 4
  %1129 = add nsw i32 %1128, %1127
  store i32 %1129, i32* %27, align 4
  %1130 = load i32, i32* @FOURBYTES, align 4
  %1131 = load i32, i32* %27, align 4
  %1132 = add nsw i32 %1130, %1131
  %1133 = call i8* @be16_to_cpu(i32 %1132)
  %1134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %1135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1134, i32 0, i32 0
  %1136 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1135, i32 0, i32 0
  %1137 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1136, i32 0, i32 0
  store i8* %1133, i8** %1137, align 8
  %1138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %1139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1138, i32 0, i32 0
  %1140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1139, i32 0, i32 0
  %1141 = load i32, i32* %1140, align 4
  %1142 = add nsw i32 %1141, 1
  store i32 %1142, i32* %1140, align 4
  %1143 = load i32, i32* @FOURBYTES, align 4
  %1144 = load i32, i32* %27, align 4
  %1145 = add nsw i32 %1143, %1144
  %1146 = load i32, i32* %13, align 4
  %1147 = add nsw i32 %1146, %1145
  store i32 %1147, i32* %13, align 4
  br label %1148

1148:                                             ; preds = %1126, %1066
  %1149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %1150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1149, i32 0, i32 0
  %1151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1150, i32 0, i32 0
  %1152 = load i32, i32* %1151, align 4
  %1153 = call i8* @be32_to_cpu(i32 %1152)
  %1154 = ptrtoint i8* %1153 to i32
  %1155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %1156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1155, i32 0, i32 0
  %1157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1156, i32 0, i32 0
  store i32 %1154, i32* %1157, align 4
  %1158 = load i32, i32* @GID_REQUEST_SZ, align 4
  %1159 = sub nsw i32 %1158, 4
  %1160 = load i32, i32* %13, align 4
  %1161 = add nsw i32 %1159, %1160
  store i32 %1161, i32* %13, align 4
  br label %1214

1162:                                             ; preds = %66
  %1163 = call i8* @be16_to_cpu(i32 131)
  %1164 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %1165 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %1164, i32 0, i32 1
  %1166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1165, i32 0, i32 0
  %1167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1166, i32 0, i32 1
  store i8* %1163, i8** %1167, align 8
  %1168 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %1169 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %1168, i32 0, i32 1
  %1170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1169, i32 0, i32 0
  %1171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1170, i32 0, i32 0
  store i32 0, i32* %1171, align 8
  %1172 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %1173 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %1172, i32 0, i32 0
  %1174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1173, i32 0, i32 0
  %1175 = bitcast i32* %1174 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %1175, %struct.TYPE_35__** %15, align 8
  %1176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %1177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1176, i32 0, i32 0
  %1178 = bitcast i32* %1177 to i64*
  %1179 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %1180 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %1179, i32 0, i32 1
  %1181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1180, i32 0, i32 0
  %1182 = call i32 @memcpy(i64* %1178, i64* %1181, i32 4)
  %1183 = load i32, i32* @GID_REQUEST_SZ, align 4
  %1184 = sub nsw i32 %1183, 4
  %1185 = sext i32 %1184 to i64
  %1186 = add i64 %1185, 4
  %1187 = trunc i64 %1186 to i32
  store i32 %1187, i32* %13, align 4
  br label %1214

1188:                                             ; preds = %66
  %1189 = call i8* @be16_to_cpu(i32 130)
  %1190 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %1191 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %1190, i32 0, i32 1
  %1192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1191, i32 0, i32 0
  %1193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1192, i32 0, i32 1
  store i8* %1189, i8** %1193, align 8
  %1194 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %1195 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %1194, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1195, i32 0, i32 0
  %1197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1196, i32 0, i32 0
  store i32 0, i32* %1197, align 8
  %1198 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %11, align 8
  %1199 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %1198, i32 0, i32 0
  %1200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1199, i32 0, i32 0
  %1201 = bitcast i32* %1200 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %1201, %struct.TYPE_35__** %15, align 8
  %1202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %1203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1202, i32 0, i32 0
  %1204 = bitcast i32* %1203 to i64*
  %1205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %1206 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %1205, i32 0, i32 1
  %1207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1206, i32 0, i32 0
  %1208 = call i32 @memcpy(i64* %1204, i64* %1207, i32 4)
  %1209 = load i32, i32* @GID_REQUEST_SZ, align 4
  %1210 = sub nsw i32 %1209, 4
  %1211 = sext i32 %1210 to i64
  %1212 = add i64 %1211, 4
  %1213 = trunc i64 %1212 to i32
  store i32 %1213, i32* %13, align 4
  br label %1214

1214:                                             ; preds = %66, %1188, %1162, %1148, %677
  %1215 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %1216 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %1215, i32 0, i32 1
  %1217 = load i8*, i8** %1216, align 8
  %1218 = bitcast i8* %1217 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %1218, %struct.ulp_bde64** %12, align 8
  %1219 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %1220 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %1219, i32 0, i32 0
  %1221 = load i32, i32* %1220, align 8
  %1222 = call i8* @putPaddrHigh(i32 %1221)
  %1223 = call i8* @le32_to_cpu(i8* %1222)
  %1224 = load %struct.ulp_bde64*, %struct.ulp_bde64** %12, align 8
  %1225 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %1224, i32 0, i32 2
  store i8* %1223, i8** %1225, align 8
  %1226 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %1227 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %1226, i32 0, i32 0
  %1228 = load i32, i32* %1227, align 8
  %1229 = call i8* @putPaddrLow(i32 %1228)
  %1230 = call i8* @le32_to_cpu(i8* %1229)
  %1231 = load %struct.ulp_bde64*, %struct.ulp_bde64** %12, align 8
  %1232 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %1231, i32 0, i32 1
  store i8* %1230, i8** %1232, align 8
  %1233 = load %struct.ulp_bde64*, %struct.ulp_bde64** %12, align 8
  %1234 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %1233, i32 0, i32 0
  %1235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1234, i32 0, i32 1
  %1236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1235, i32 0, i32 1
  store i64 0, i64* %1236, align 8
  %1237 = load i32, i32* %13, align 4
  %1238 = load %struct.ulp_bde64*, %struct.ulp_bde64** %12, align 8
  %1239 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %1238, i32 0, i32 0
  %1240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1239, i32 0, i32 1
  %1241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1240, i32 0, i32 0
  store i32 %1237, i32* %1241, align 8
  %1242 = load %struct.ulp_bde64*, %struct.ulp_bde64** %12, align 8
  %1243 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %1242, i32 0, i32 0
  %1244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1243, i32 0, i32 0
  %1245 = load i8*, i8** %1244, align 8
  %1246 = call i8* @le32_to_cpu(i8* %1245)
  %1247 = load %struct.ulp_bde64*, %struct.ulp_bde64** %12, align 8
  %1248 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %1247, i32 0, i32 0
  %1249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1248, i32 0, i32 0
  store i8* %1246, i8** %1249, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*)* @lpfc_cmpl_ct_cmd_fdmi to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*), void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %19, align 8
  %1250 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %1251 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %1252 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %1253 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %1254 = load void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %19, align 8
  %1255 = bitcast void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %1254 to void (%struct.lpfc_hba*, %struct.lpfc_iocbq.1*, %struct.lpfc_iocbq.1*)*
  %1256 = load i32, i32* @FC_MAX_NS_RSP, align 4
  %1257 = call i32 @lpfc_ct_cmd(%struct.lpfc_vport* %1250, %struct.lpfc_dmabuf* %1251, %struct.lpfc_dmabuf* %1252, %struct.lpfc_nodelist* %1253, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.1*, %struct.lpfc_iocbq.1*)* %1255, i32 %1256, i32 0)
  %1258 = icmp ne i32 %1257, 0
  br i1 %1258, label %1260, label %1259

1259:                                             ; preds = %1214
  store i32 0, i32* %4, align 4
  br label %1292

1260:                                             ; preds = %1214
  %1261 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %1262 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %1261)
  %1263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %1264 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %1265 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %1264, i32 0, i32 1
  %1266 = load i8*, i8** %1265, align 8
  %1267 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %1268 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %1267, i32 0, i32 0
  %1269 = load i32, i32* %1268, align 8
  %1270 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %1263, i8* %1266, i32 %1269)
  br label %1271

1271:                                             ; preds = %1260, %65
  %1272 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %1273 = call i32 @kfree(%struct.lpfc_dmabuf* %1272)
  br label %1274

1274:                                             ; preds = %1271, %53
  %1275 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %1276 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %1277 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %1276, i32 0, i32 1
  %1278 = load i8*, i8** %1277, align 8
  %1279 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %1280 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %1279, i32 0, i32 0
  %1281 = load i32, i32* %1280, align 8
  %1282 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %1275, i8* %1278, i32 %1281)
  br label %1283

1283:                                             ; preds = %1274, %47
  %1284 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %1285 = call i32 @kfree(%struct.lpfc_dmabuf* %1284)
  br label %1286

1286:                                             ; preds = %1283, %35
  %1287 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %1288 = load i32, i32* @KERN_INFO, align 4
  %1289 = load i32, i32* @LOG_DISCOVERY, align 4
  %1290 = load i32, i32* %7, align 4
  %1291 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %1287, i32 %1288, i32 %1289, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %1290)
  store i32 1, i32* %4, align 4
  br label %1292

1292:                                             ; preds = %1286, %1259
  %1293 = load i32, i32* %4, align 4
  ret i32 %1293
}

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.lpfc_sli_ct_request*, i32, i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lpfc_decode_firmware_rev(%struct.lpfc_hba*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_38__* @init_utsname(...) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local void @lpfc_cmpl_ct_cmd_fdmi(%struct.lpfc_hba*, %struct.lpfc_iocbq.0*, %struct.lpfc_iocbq.0*) #1

declare dso_local i32 @lpfc_ct_cmd(%struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_nodelist*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq.1*, %struct.lpfc_iocbq.1*)*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
