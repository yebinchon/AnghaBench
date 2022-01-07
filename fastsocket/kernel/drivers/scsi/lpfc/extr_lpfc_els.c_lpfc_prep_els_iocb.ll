; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_prep_els_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_prep_els_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_iocbq = type { i32, i32, i64, %struct.lpfc_vport*, i64, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, %struct.TYPE_16__ }
%struct.lpfc_dmabuf = type { i32, i8*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8* }
%struct.lpfc_vport = type { i32, i64, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, i64, i32* }
%struct.lpfc_nodelist = type { i32 }
%struct.ulp_bde64 = type { %struct.TYPE_12__, i8*, i8* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@Fabric_DID = common dso_local global i64 0, align 8
@HBA_FIP_SUPPORT = common dso_local global i32 0, align 4
@LPFC_ELS_ID_FLOGI = common dso_local global i32 0, align 4
@LPFC_FIP_ELS_ID_SHIFT = common dso_local global i32 0, align 4
@LPFC_FIP_ELS_ID_MASK = common dso_local global i32 0, align 4
@LPFC_ELS_ID_FDISC = common dso_local global i32 0, align 4
@LPFC_ELS_ID_LOGO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@BUFF_TYPE_BLP_64 = common dso_local global i8* null, align 8
@CMD_ELS_REQUEST64_CR = common dso_local global i32 0, align 4
@FF_DEF_RATOV = common dso_local global i32 0, align 4
@CMD_XMIT_ELS_RSP64_CX = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@FC_PT2PT = common dso_local global i32 0, align 4
@ELS_CMD_ECHO = common dso_local global i64 0, align 8
@FCELSSIZE = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i64 0, align 8
@LPFC_DRVR_TIMEOUT = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"0116 Xmit ELS command x%x to remote NPORT x%x I/O tag: x%x, port state:x%x fc_flag:x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"0117 Xmit ELS response x%x to remote NPORT x%x I/O tag: x%x, size: x%x port_state x%x fc_flag x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %0, i64 %1, i32 %2, i64 %3, %struct.lpfc_nodelist* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.lpfc_nodelist*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.lpfc_hba*, align 8
  %17 = alloca %struct.lpfc_iocbq*, align 8
  %18 = alloca %struct.lpfc_dmabuf*, align 8
  %19 = alloca %struct.lpfc_dmabuf*, align 8
  %20 = alloca %struct.lpfc_dmabuf*, align 8
  %21 = alloca %struct.ulp_bde64*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store %struct.lpfc_nodelist* %4, %struct.lpfc_nodelist** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %24, align 8
  store %struct.lpfc_hba* %25, %struct.lpfc_hba** %16, align 8
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %27 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  br label %519

30:                                               ; preds = %7
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %32 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %31)
  store %struct.lpfc_iocbq* %32, %struct.lpfc_iocbq** %17, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %34 = icmp eq %struct.lpfc_iocbq* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  br label %519

36:                                               ; preds = %30
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @Fabric_DID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HBA_FIP_SUPPORT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %40
  %48 = load i64, i64* %15, align 8
  %49 = icmp eq i64 %48, 129
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %15, align 8
  %52 = icmp eq i64 %51, 130
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %15, align 8
  %55 = icmp eq i64 %54, 128
  br i1 %55, label %56, label %89

56:                                               ; preds = %53, %50, %47
  %57 = load i64, i64* %15, align 8
  switch i64 %57, label %88 [
    i64 129, label %58
    i64 130, label %68
    i64 128, label %78
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* @LPFC_ELS_ID_FLOGI, align 4
  %60 = load i32, i32* @LPFC_FIP_ELS_ID_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %65 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %88

68:                                               ; preds = %56
  %69 = load i32, i32* @LPFC_ELS_ID_FDISC, align 4
  %70 = load i32, i32* @LPFC_FIP_ELS_ID_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %75 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %88

78:                                               ; preds = %56
  %79 = load i32, i32* @LPFC_ELS_ID_LOGO, align 4
  %80 = load i32, i32* @LPFC_FIP_ELS_ID_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %85 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %56, %78, %68, %58
  br label %96

89:                                               ; preds = %53, %40, %36
  %90 = load i32, i32* @LPFC_FIP_ELS_ID_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %93 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %89, %88
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %98 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %97, i32 0, i32 8
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %22, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %99)
  store %struct.lpfc_dmabuf* %100, %struct.lpfc_dmabuf** %18, align 8
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %102 = icmp ne %struct.lpfc_dmabuf* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %105 = load i32, i32* @MEM_PRI, align 4
  %106 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %107 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %106, i32 0, i32 0
  %108 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %104, i32 %105, i32* %107)
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %110 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %103, %96
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %113 = icmp ne %struct.lpfc_dmabuf* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %116 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114, %111
  br label %513

120:                                              ; preds = %114
  %121 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %122 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %121, i32 0, i32 2
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %120
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %127)
  store %struct.lpfc_dmabuf* %128, %struct.lpfc_dmabuf** %19, align 8
  %129 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %130 = icmp ne %struct.lpfc_dmabuf* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %133 = load i32, i32* @MEM_PRI, align 4
  %134 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %135 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %134, i32 0, i32 0
  %136 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %132, i32 %133, i32* %135)
  %137 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %138 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %141 = icmp ne %struct.lpfc_dmabuf* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %144 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %142, %139
  br label %502

148:                                              ; preds = %142
  %149 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %150 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %149, i32 0, i32 2
  %151 = call i32 @INIT_LIST_HEAD(i32* %150)
  br label %153

152:                                              ; preds = %120
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %19, align 8
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %154)
  store %struct.lpfc_dmabuf* %155, %struct.lpfc_dmabuf** %20, align 8
  %156 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %157 = icmp ne %struct.lpfc_dmabuf* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %160 = load i32, i32* @MEM_PRI, align 4
  %161 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %162 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %161, i32 0, i32 0
  %163 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %159, i32 %160, i32* %162)
  %164 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %165 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %158, %153
  %167 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %168 = icmp ne %struct.lpfc_dmabuf* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %171 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %169, %166
  br label %487

175:                                              ; preds = %169
  %176 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %177 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %176, i32 0, i32 2
  %178 = call i32 @INIT_LIST_HEAD(i32* %177)
  %179 = load i64, i64* %10, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %234

181:                                              ; preds = %175
  %182 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %183 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @putPaddrHigh(i32 %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  store i8* %185, i8** %190, align 8
  %191 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %192 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @putPaddrLow(i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  store i8* %194, i8** %199, align 8
  %200 = load i8*, i8** @BUFF_TYPE_BLP_64, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  store i8* %200, i8** %205, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 80, i32* %210, align 8
  %211 = load i64, i64* %14, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  store i64 %211, i64* %215, align 8
  %216 = load i32, i32* @CMD_ELS_REQUEST64_CR, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 8
  store i32 %216, i32* %218, align 4
  %219 = load i64, i64* %15, align 8
  %220 = icmp eq i64 %219, 129
  br i1 %220, label %221, label %226

221:                                              ; preds = %181
  %222 = load i32, i32* @FF_DEF_RATOV, align 4
  %223 = mul nsw i32 %222, 2
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %233

226:                                              ; preds = %181
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %229, 2
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %226, %221
  br label %272

234:                                              ; preds = %175
  %235 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %236 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i8* @putPaddrHigh(i32 %237)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  store i8* %238, i8** %243, align 8
  %244 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %245 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @putPaddrLow(i32 %246)
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 6
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  store i8* %247, i8** %252, align 8
  %253 = load i8*, i8** @BUFF_TYPE_BLP_64, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  store i8* %253, i8** %258, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  store i32 40, i32* %263, align 8
  %264 = load i64, i64* %14, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  store i64 %264, i64* %268, align 8
  %269 = load i32, i32* @CMD_XMIT_ELS_RSP64_CX, align 4
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 8
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %234, %233
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 1
  store i32 1, i32* %274, align 4
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  store i32 1, i32* %276, align 8
  %277 = load i32, i32* @CLASS3, align 4
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 7
  store i32 %277, i32* %279, align 8
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %281 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %299, label %286

286:                                              ; preds = %272
  %287 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %288 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @LPFC_SLI_REV4, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %333

292:                                              ; preds = %286
  %293 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %294 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @FC_PT2PT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %333

299:                                              ; preds = %292, %272
  %300 = load i64, i64* %10, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %320

302:                                              ; preds = %299
  %303 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %304 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 6
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  store i32 %305, i32* %309, align 8
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %311 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %310, i32 0, i32 4
  %312 = load i32*, i32** %311, align 8
  %313 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %314 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 5
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %302, %299
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 4
  store i64 0, i64* %322, align 8
  %323 = load i64, i64* %15, align 8
  %324 = load i64, i64* @ELS_CMD_ECHO, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 3
  store i32 0, i32* %328, align 4
  br label %332

329:                                              ; preds = %320
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 3
  store i32 1, i32* %331, align 4
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %292, %286
  %334 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %335 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %334, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = bitcast i8* %336 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %337, %struct.ulp_bde64** %21, align 8
  %338 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %339 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i8* @putPaddrLow(i32 %340)
  %342 = call i8* @le32_to_cpu(i8* %341)
  %343 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %344 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %343, i32 0, i32 2
  store i8* %342, i8** %344, align 8
  %345 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %346 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i8* @putPaddrHigh(i32 %347)
  %349 = call i8* @le32_to_cpu(i8* %348)
  %350 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %351 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %350, i32 0, i32 1
  store i8* %349, i8** %351, align 8
  %352 = load i32, i32* %11, align 4
  %353 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %354 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 1
  store i32 %352, i32* %356, align 8
  %357 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %358 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 0
  store i64 0, i64* %360, align 8
  %361 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %362 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = call i8* @le32_to_cpu(i8* %364)
  %366 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %367 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  store i8* %365, i8** %368, align 8
  %369 = load i64, i64* %10, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %406

371:                                              ; preds = %333
  %372 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %373 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %372, i32 1
  store %struct.ulp_bde64* %373, %struct.ulp_bde64** %21, align 8
  %374 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %375 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i8* @putPaddrLow(i32 %376)
  %378 = call i8* @le32_to_cpu(i8* %377)
  %379 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %380 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %379, i32 0, i32 2
  store i8* %378, i8** %380, align 8
  %381 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %382 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i8* @putPaddrHigh(i32 %383)
  %385 = call i8* @le32_to_cpu(i8* %384)
  %386 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %387 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %386, i32 0, i32 1
  store i8* %385, i8** %387, align 8
  %388 = load i32, i32* @FCELSSIZE, align 4
  %389 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %390 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 1
  store i32 %388, i32* %392, align 8
  %393 = load i64, i64* @BUFF_TYPE_BDE_64, align 8
  %394 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %395 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 0
  store i64 %393, i64* %397, align 8
  %398 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %399 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = call i8* @le32_to_cpu(i8* %401)
  %403 = load %struct.ulp_bde64*, %struct.ulp_bde64** %21, align 8
  %404 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 0
  store i8* %402, i8** %405, align 8
  br label %406

406:                                              ; preds = %371, %333
  %407 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %408 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %407)
  %409 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %410 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %409, i32 0, i32 7
  store i32 %408, i32* %410, align 8
  %411 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %412 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %411, i32 0, i32 7
  %413 = load i32, i32* %412, align 8
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %406
  br label %487

416:                                              ; preds = %406
  %417 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %418 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %419 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %418, i32 0, i32 6
  store %struct.lpfc_dmabuf* %417, %struct.lpfc_dmabuf** %419, align 8
  %420 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %421 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %422 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %421, i32 0, i32 5
  store %struct.lpfc_dmabuf* %420, %struct.lpfc_dmabuf** %422, align 8
  %423 = load i64, i64* %12, align 8
  %424 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %425 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %424, i32 0, i32 4
  store i64 %423, i64* %425, align 8
  %426 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %427 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %428 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %427, i32 0, i32 3
  store %struct.lpfc_vport* %426, %struct.lpfc_vport** %428, align 8
  %429 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %430 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = shl i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = load i64, i64* @LPFC_DRVR_TIMEOUT, align 8
  %435 = add nsw i64 %433, %434
  %436 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %437 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %436, i32 0, i32 2
  store i64 %435, i64* %437, align 8
  %438 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %439 = icmp ne %struct.lpfc_dmabuf* %438, null
  br i1 %439, label %440, label %446

440:                                              ; preds = %416
  %441 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %442 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %441, i32 0, i32 2
  %443 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %444 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %443, i32 0, i32 2
  %445 = call i32 @list_add(i32* %442, i32* %444)
  br label %446

446:                                              ; preds = %440, %416
  %447 = load i64, i64* %10, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %465

449:                                              ; preds = %446
  %450 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %451 = load i32, i32* @KERN_INFO, align 4
  %452 = load i32, i32* @LOG_ELS, align 4
  %453 = load i64, i64* %15, align 8
  %454 = load i64, i64* %14, align 8
  %455 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %456 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %459 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %462 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i64, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %450, i32 %451, i32 %452, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %453, i64 %454, i32 %457, i32 %460, i32 %463)
  br label %485

465:                                              ; preds = %446
  %466 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %467 = load i32, i32* @KERN_INFO, align 4
  %468 = load i32, i32* @LOG_ELS, align 4
  %469 = load i64, i64* %15, align 8
  %470 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %471 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %475 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %11, align 4
  %478 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %479 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %482 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i64, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %466, i32 %467, i32 %468, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i64 %469, i64 %473, i32 %476, i32 %477, i32 %480, i32 %483)
  br label %485

485:                                              ; preds = %465, %449
  %486 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  store %struct.lpfc_iocbq* %486, %struct.lpfc_iocbq** %8, align 8
  br label %519

487:                                              ; preds = %415, %174
  %488 = load i64, i64* %10, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %499

490:                                              ; preds = %487
  %491 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %492 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %493 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %492, i32 0, i32 1
  %494 = load i8*, i8** %493, align 8
  %495 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %496 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %491, i8* %494, i32 %497)
  br label %499

499:                                              ; preds = %490, %487
  %500 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %20, align 8
  %501 = call i32 @kfree(%struct.lpfc_dmabuf* %500)
  br label %502

502:                                              ; preds = %499, %147
  %503 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %504 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %505 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %504, i32 0, i32 1
  %506 = load i8*, i8** %505, align 8
  %507 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %508 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %503, i8* %506, i32 %509)
  %511 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %512 = call i32 @kfree(%struct.lpfc_dmabuf* %511)
  br label %513

513:                                              ; preds = %502, %119
  %514 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  %515 = call i32 @kfree(%struct.lpfc_dmabuf* %514)
  %516 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  %517 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  %518 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %516, %struct.lpfc_iocbq* %517)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %8, align 8
  br label %519

519:                                              ; preds = %513, %485, %35, %29
  %520 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  ret %struct.lpfc_iocbq* %520
}

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i64, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
