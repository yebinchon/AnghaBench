; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_prep_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_prep_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i64* }
%struct.lpfc_scsi_buf = type { i32, %struct.fcp_cmnd*, %struct.scsi_cmnd*, %struct.TYPE_9__*, %struct.lpfc_iocbq }
%struct.fcp_cmnd = type { i64, i8*, i32*, i32, i64 }
%struct.scsi_cmnd = type { i32, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.lpfc_iocbq = type { %struct.lpfc_vport*, %struct.TYPE_16__, i32, %struct.lpfc_scsi_buf* }
%struct.TYPE_16__ = type { i64, i32, i32, i32, %struct.TYPE_14__, i8*, %struct.TYPE_12__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.lpfc_nodelist = type { i64, i32 }

@LPFC_FCP_CDB_LEN = common dso_local global i64 0, align 8
@HEAD_OF_Q = common dso_local global i8* null, align 8
@ORDERED_Q = common dso_local global i8* null, align 8
@SIMPLE_Q = common dso_local global i8* null, align 8
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CMD_FCP_IWRITE64_CR = common dso_local global i32 0, align 4
@PARM_READ_CHECK = common dso_local global i8* null, align 8
@WRITE_DATA = common dso_local global i64 0, align 8
@CMD_FCP_IREAD64_CR = common dso_local global i32 0, align 4
@READ_DATA = common dso_local global i64 0, align 8
@CMD_FCP_ICMND64_CR = common dso_local global i32 0, align 4
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@lpfc_scsi_cmd_iocb_cmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_scsi_buf*, %struct.lpfc_nodelist*)* @lpfc_scsi_prep_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_scsi_prep_cmnd(%struct.lpfc_vport* %0, %struct.lpfc_scsi_buf* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_scsi_buf*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.fcp_cmnd*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8], align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %5, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %6, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %7, align 8
  %19 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %19, i32 0, i32 2
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %20, align 8
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %8, align 8
  %22 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %22, i32 0, i32 1
  %24 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %23, align 8
  store %struct.fcp_cmnd* %24, %struct.fcp_cmnd** %9, align 8
  %25 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 1
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %10, align 8
  %28 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %28, i32 0, i32 4
  store %struct.lpfc_iocbq* %29, %struct.lpfc_iocbq** %11, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %34 = icmp ne %struct.lpfc_nodelist* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %37 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %3
  br label %267

40:                                               ; preds = %35
  %41 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %41, i32 0, i32 3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %46 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %45, i32 0, i32 1
  %47 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %46, align 8
  %48 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %49, i32 0, i32 2
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %50, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %57 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %56, i32 0, i32 1
  %58 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %57, align 8
  %59 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %58, i32 0, i32 3
  %60 = call i32 @int_to_scsilun(i32 %55, i32* %59)
  %61 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %62 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @memcpy(i32* %65, i32 %68, i64 %71)
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LPFC_FCP_CDB_LEN, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %40
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = load i64, i64* @LPFC_FCP_CDB_LEN, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = call i32 @memset(i32* %84, i32 0, i64 %89)
  br label %91

91:                                               ; preds = %78, %40
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %94 = call i64 @scsi_populate_tag_msg(%struct.scsi_cmnd* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  switch i32 %99, label %108 [
    i32 129, label %100
    i32 128, label %104
  ]

100:                                              ; preds = %96
  %101 = load i8*, i8** @HEAD_OF_Q, align 8
  %102 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %103 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %112

104:                                              ; preds = %96
  %105 = load i8*, i8** @ORDERED_Q, align 8
  %106 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %107 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %112

108:                                              ; preds = %96
  %109 = load i8*, i8** @SIMPLE_Q, align 8
  %110 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %111 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %108, %104, %100
  br label %117

113:                                              ; preds = %91
  %114 = load i8*, i8** @SIMPLE_Q, align 8
  %115 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %116 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %113, %112
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @LPFC_SLI_REV4, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %15, align 4
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %125 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %171

127:                                              ; preds = %117
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @DMA_TO_DEVICE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %127
  %132 = load i32, i32* @CMD_FCP_IWRITE64_CR, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i8*, i8** @PARM_READ_CHECK, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  br label %148

141:                                              ; preds = %131
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 5
  store i8* null, i8** %147, align 8
  br label %148

148:                                              ; preds = %141, %137
  %149 = load i64, i64* @WRITE_DATA, align 8
  %150 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %151 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %170

156:                                              ; preds = %127
  %157 = load i32, i32* @CMD_FCP_IREAD64_CR, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  %160 = load i8*, i8** @PARM_READ_CHECK, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 5
  store i8* %160, i8** %162, align 8
  %163 = load i64, i64* @READ_DATA, align 8
  %164 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %165 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %167 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %156, %148
  br label %187

171:                                              ; preds = %117
  %172 = load i32, i32* @CMD_FCP_ICMND64_CR, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 7
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 5
  store i8* null, i8** %180, align 8
  %181 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %182 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %171, %170
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %189 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 3
  br i1 %191, label %192, label %207

192:                                              ; preds = %187
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %192
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %206 = call i32 @lpfc_fcpcmd_to_iocb(i32 %204, %struct.fcp_cmnd* %205)
  br label %207

207:                                              ; preds = %199, %192, %187
  %208 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %209 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %212 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  store i64 %210, i64* %213, align 8
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %207
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %222 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i64, i64* %220, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %227 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  store i64 %225, i64* %228, align 8
  br label %229

229:                                              ; preds = %216, %207
  %230 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %231 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %238 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  store i32 1, i32* %239, align 8
  br label %244

240:                                              ; preds = %229
  %241 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %242 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  store i32 0, i32* %243, align 8
  br label %244

244:                                              ; preds = %240, %236
  %245 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %246 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, 15
  %249 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %250 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 2
  store i32 %248, i32* %251, align 4
  %252 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %253 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %254 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %253, i32 0, i32 3
  store %struct.lpfc_scsi_buf* %252, %struct.lpfc_scsi_buf** %254, align 8
  %255 = load i32, i32* @lpfc_scsi_cmd_iocb_cmpl, align 4
  %256 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %257 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %259 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %262 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  store i32 %260, i32* %263, align 8
  %264 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %265 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %266 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %265, i32 0, i32 0
  store %struct.lpfc_vport* %264, %struct.lpfc_vport** %266, align 8
  br label %267

267:                                              ; preds = %244, %39
  ret void
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @scsi_populate_tag_msg(%struct.scsi_cmnd*, i8*) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_fcpcmd_to_iocb(i32, %struct.fcp_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
