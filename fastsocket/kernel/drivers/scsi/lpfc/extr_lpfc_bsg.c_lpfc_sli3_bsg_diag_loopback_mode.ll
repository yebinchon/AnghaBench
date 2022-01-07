; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli3_bsg_diag_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli3_bsg_diag_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32 }
%struct.fc_bsg_job = type { i32, i32 (%struct.fc_bsg_job*)*, %struct.TYPE_20__*, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.diag_mode_set = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i8*, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@MBX_SUCCESS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"2738 Received DIAG MODE request size:%d below the minimum size:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MBX_DOWN_LINK = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i8* null, align 8
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@INTERNAL_LOOP_BACK = common dso_local global i64 0, align 8
@FLAGS_LOCAL_LB = common dso_local global i32 0, align 4
@FLAGS_TOPOLOGY_MODE_LOOP = common dso_local global i32 0, align 4
@MBX_INIT_LINK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@LPFC_HBA_READY = common dso_local global i64 0, align 8
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.fc_bsg_job*)* @lpfc_sli3_bsg_diag_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli3_bsg_diag_loopback_mode(%struct.lpfc_hba* %0, %struct.fc_bsg_job* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.fc_bsg_job*, align 8
  %5 = alloca %struct.diag_mode_set*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.fc_bsg_job* %1, %struct.fc_bsg_job** %4, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  %12 = load i32, i32* @MBX_SUCCESS, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %14 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %13, i32 0, i32 2
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = load i32, i32* @LOG_LIBDFC, align 4
  %26 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %27 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %28, i32 20)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %214

32:                                               ; preds = %2
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = call i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %214

38:                                               ; preds = %32
  %39 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %39, i32 0, i32 3
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.diag_mode_set*
  store %struct.diag_mode_set* %46, %struct.diag_mode_set** %5, align 8
  %47 = load %struct.diag_mode_set*, %struct.diag_mode_set** %5, align 8
  %48 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  %50 = load %struct.diag_mode_set*, %struct.diag_mode_set** %5, align 8
  %51 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 100
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.TYPE_21__* @mempool_alloc(i32 %57, i32 %58)
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %8, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %61 = icmp ne %struct.TYPE_21__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %38
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %198

65:                                               ; preds = %38
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = bitcast %struct.TYPE_21__* %66 to i8*
  %68 = call i32 @memset(i8* %67, i32 0, i32 24)
  %69 = load i32, i32* @MBX_DOWN_LINK, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 8
  %74 = load i8*, i8** @OWN_HOST, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  store i8* %74, i8** %78, align 8
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %82 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %79, %struct.TYPE_21__* %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @MBX_SUCCESS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %194

86:                                               ; preds = %65
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %194

93:                                               ; preds = %86
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %109, %93
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = sext i32 %101 to i64
  %104 = load i64, i64* %7, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %198

109:                                              ; preds = %100
  %110 = call i32 @msleep(i32 10)
  br label %94

111:                                              ; preds = %94
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %113 = bitcast %struct.TYPE_21__* %112 to i8*
  %114 = call i32 @memset(i8* %113, i32 0, i32 24)
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @INTERNAL_LOOP_BACK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load i32, i32* @FLAGS_LOCAL_LB, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store i32 %119, i32* %125, align 4
  br label %134

126:                                              ; preds = %111
  %127 = load i32, i32* @FLAGS_TOPOLOGY_MODE_LOOP, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %118
  %135 = load i32, i32* @MBX_INIT_LINK, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  store i32 %135, i32* %139, align 8
  %140 = load i8*, i8** @OWN_HOST, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  store i8* %140, i8** %144, align 8
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %147 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %148 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %145, %struct.TYPE_21__* %146, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @MBX_SUCCESS, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %134
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152, %134
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %11, align 4
  br label %193

162:                                              ; preds = %152
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 2
  %165 = call i32 @spin_lock_irq(i32* %164)
  %166 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 2
  %173 = call i32 @spin_unlock_irq(i32* %172)
  %174 = call i32 @msleep(i32 100)
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %190, %162
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %177 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @LPFC_HBA_READY, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  %184 = sext i32 %182 to i64
  %185 = load i64, i64* %7, align 8
  %186 = icmp sgt i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* @ETIMEDOUT, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %11, align 4
  br label %192

190:                                              ; preds = %181
  %191 = call i32 @msleep(i32 10)
  br label %175

192:                                              ; preds = %187, %175
  br label %193

193:                                              ; preds = %192, %159
  br label %197

194:                                              ; preds = %86, %65
  %195 = load i32, i32* @ENODEV, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %194, %193
  br label %198

198:                                              ; preds = %197, %106, %62
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = call i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba* %199)
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %202 = icmp ne %struct.TYPE_21__* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @MBX_TIMEOUT, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @mempool_free(%struct.TYPE_21__* %208, i32 %211)
  br label %213

213:                                              ; preds = %207, %203, %198
  br label %214

214:                                              ; preds = %213, %37, %22
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %217 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %216, i32 0, i32 2
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 8
  %220 = load i32, i32* %11, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %214
  %223 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %224 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %223, i32 0, i32 1
  %225 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %224, align 8
  %226 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %4, align 8
  %227 = call i32 %225(%struct.fc_bsg_job* %226)
  br label %228

228:                                              ; preds = %222, %214
  %229 = load i32, i32* %11, align 4
  ret i32 %229
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba*) #1

declare dso_local %struct.TYPE_21__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
