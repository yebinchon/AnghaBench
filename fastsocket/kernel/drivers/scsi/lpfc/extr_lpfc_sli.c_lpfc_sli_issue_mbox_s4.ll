; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_mbox_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_mbox_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_19__*, i32, %struct.TYPE_15__, %struct.lpfc_sli }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.lpfc_sli = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_17__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"(%d):2544 Mailbox command x%x (x%x/x%x) cannot issue Data: x%x x%x\0A\00", align 1
@MBX_POLL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"(%d):2541 Mailbox command x%x (x%x/x%x) failure: mqe_sta: x%x mcqe_sta: x%x/x%x Data: x%x x%x\0A,\00", align 1
@lpfc_mqe_status = common dso_local global i32 0, align 4
@lpfc_mcqe_status = common dso_local global i32 0, align 4
@lpfc_mcqe_ext_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [113 x i8] c"(%d):2542 Try to issue mailbox command x%x (x%x/x%x) synchronously ahead of asyncmailbox command queue: x%x x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"(%d):2597 Sync Mailbox command x%x (x%x/x%x) failure: mqe_sta: x%x mcqe_sta: x%x/x%x Data: x%x x%x\0A,\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"(%d):2543 Mailbox command x%x (x%x/x%x) cannot issue Data: x%x x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"(%d):0354 Mbox cmd issue - Enqueue Data: x%x (x%x/x%x) x%x x%x x%x\0A\00", align 1
@lpfc_mqe_command = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.TYPE_20__*, i32)* @lpfc_sli_issue_mbox_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_issue_mbox_s4(%struct.lpfc_hba* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_sli*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 3
  store %struct.lpfc_sli* %12, %struct.lpfc_sli** %8, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = call i32 @lpfc_idiag_mbxacc_dump_issue_mbox(%struct.lpfc_hba* %13, %struct.TYPE_14__* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = call i32 @lpfc_mbox_dev_check(%struct.lpfc_hba* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %3
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load i32, i32* @LOG_MBOX, align 4
  %27 = load i32, i32* @LOG_SLI, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %38, %33 ], [ 0, %39 ]
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = call i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba* %47, %struct.TYPE_20__* %48)
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %50, %struct.TYPE_20__* %51)
  %53 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %54 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i32 %49, i32 %52, i32 %55, i32 %56)
  br label %333

58:                                               ; preds = %3
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %129, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @MBX_POLL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = call i32 @lpfc_sli4_post_sync_mbox(%struct.lpfc_hba* %69, %struct.TYPE_20__* %70)
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MBX_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %127

79:                                               ; preds = %75
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %81 = load i32, i32* @KERN_WARNING, align 4
  %82 = load i32, i32* @LOG_MBOX, align 4
  %83 = load i32, i32* @LOG_SLI, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  br label %96

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %89
  %97 = phi i32 [ %94, %89 ], [ 0, %95 ]
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = call i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba* %103, %struct.TYPE_20__* %104)
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %106, %struct.TYPE_20__* %107)
  %109 = load i32, i32* @lpfc_mqe_status, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = call i32 @bf_get(i32 %109, i32* %112)
  %114 = load i32, i32* @lpfc_mcqe_status, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = call i32 @bf_get(i32 %114, i32* %116)
  %118 = load i32, i32* @lpfc_mcqe_ext_status, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = call i32 @bf_get(i32 %118, i32* %120)
  %122 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %123 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %80, i32 %81, i32 %84, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %102, i32 %105, i32 %108, i32 %113, i32 %117, i32 %121, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %96, %75
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %4, align 4
  br label %335

129:                                              ; preds = %58
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @MBX_POLL, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %232

133:                                              ; preds = %129
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %135 = load i32, i32* @KERN_WARNING, align 4
  %136 = load i32, i32* @LOG_MBOX, align 4
  %137 = load i32, i32* @LOG_SLI, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = icmp ne %struct.TYPE_17__* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %133
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  br label %150

149:                                              ; preds = %133
  br label %150

150:                                              ; preds = %149, %143
  %151 = phi i32 [ %148, %143 ], [ 0, %149 ]
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %159 = call i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba* %157, %struct.TYPE_20__* %158)
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %162 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %160, %struct.TYPE_20__* %161)
  %163 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %164 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %134, i32 %135, i32 %138, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %156, i32 %159, i32 %162, i32 %165, i32 %166)
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %169 = call i32 @lpfc_sli4_async_mbox_block(%struct.lpfc_hba* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %230, label %172

172:                                              ; preds = %150
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %175 = call i32 @lpfc_sli4_post_sync_mbox(%struct.lpfc_hba* %173, %struct.TYPE_20__* %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @MBX_SUCCESS, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %227

179:                                              ; preds = %172
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %181 = load i32, i32* @KERN_WARNING, align 4
  %182 = load i32, i32* @LOG_MBOX, align 4
  %183 = load i32, i32* @LOG_SLI, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = icmp ne %struct.TYPE_17__* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %179
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  br label %196

195:                                              ; preds = %179
  br label %196

196:                                              ; preds = %195, %189
  %197 = phi i32 [ %194, %189 ], [ 0, %195 ]
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %205 = call i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba* %203, %struct.TYPE_20__* %204)
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %206, %struct.TYPE_20__* %207)
  %209 = load i32, i32* @lpfc_mqe_status, align 4
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = call i32 @bf_get(i32 %209, i32* %212)
  %214 = load i32, i32* @lpfc_mcqe_status, align 4
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 2
  %217 = call i32 @bf_get(i32 %214, i32* %216)
  %218 = load i32, i32* @lpfc_mcqe_ext_status, align 4
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 2
  %221 = call i32 @bf_get(i32 %218, i32* %220)
  %222 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %223 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %180, i32 %181, i32 %184, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %197, i32 %202, i32 %205, i32 %208, i32 %213, i32 %217, i32 %221, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %196, %172
  %228 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %229 = call i32 @lpfc_sli4_async_mbox_unblock(%struct.lpfc_hba* %228)
  br label %230

230:                                              ; preds = %227, %150
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %4, align 4
  br label %335

232:                                              ; preds = %129
  br label %233

233:                                              ; preds = %232
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %236 = call i32 @lpfc_mbox_cmd_check(%struct.lpfc_hba* %234, %struct.TYPE_20__* %235)
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %274

239:                                              ; preds = %233
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %241 = load i32, i32* @KERN_ERR, align 4
  %242 = load i32, i32* @LOG_MBOX, align 4
  %243 = load i32, i32* @LOG_SLI, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = icmp ne %struct.TYPE_17__* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %239
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  br label %256

255:                                              ; preds = %239
  br label %256

256:                                              ; preds = %255, %249
  %257 = phi i32 [ %254, %249 ], [ 0, %255 ]
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %265 = call i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba* %263, %struct.TYPE_20__* %264)
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %268 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %266, %struct.TYPE_20__* %267)
  %269 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %270 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %7, align 4
  %273 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %240, i32 %241, i32 %244, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %257, i32 %262, i32 %265, i32 %268, i32 %271, i32 %272)
  br label %333

274:                                              ; preds = %233
  %275 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %276 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %281 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %280, i32 0, i32 1
  %282 = load i64, i64* %9, align 8
  %283 = call i32 @spin_lock_irqsave(i32* %281, i64 %282)
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %286 = call i32 @lpfc_mbox_put(%struct.lpfc_hba* %284, %struct.TYPE_20__* %285)
  %287 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %288 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %287, i32 0, i32 1
  %289 = load i64, i64* %9, align 8
  %290 = call i32 @spin_unlock_irqrestore(i32* %288, i64 %289)
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %292 = load i32, i32* @KERN_INFO, align 4
  %293 = load i32, i32* @LOG_MBOX, align 4
  %294 = load i32, i32* @LOG_SLI, align 4
  %295 = or i32 %293, %294
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  %299 = icmp ne %struct.TYPE_17__* %298, null
  br i1 %299, label %300, label %306

300:                                              ; preds = %274
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  br label %307

306:                                              ; preds = %274
  br label %307

307:                                              ; preds = %306, %300
  %308 = phi i32 [ %305, %300 ], [ 16777215, %306 ]
  %309 = load i32, i32* @lpfc_mqe_command, align 4
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = call i32 @bf_get(i32 %309, i32* %312)
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %316 = call i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba* %314, %struct.TYPE_20__* %315)
  %317 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %319 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %317, %struct.TYPE_20__* %318)
  %320 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %321 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %320, i32 0, i32 0
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.lpfc_sli*, %struct.lpfc_sli** %8, align 8
  %326 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @MBX_NOWAIT, align 4
  %329 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %291, i32 %292, i32 %295, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %308, i32 %313, i32 %316, i32 %319, i32 %324, i32 %327, i32 %328)
  %330 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %331 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %330)
  %332 = load i32, i32* @MBX_BUSY, align 4
  store i32 %332, i32* %4, align 4
  br label %335

333:                                              ; preds = %256, %40
  %334 = load i32, i32* @MBX_NOT_FINISHED, align 4
  store i32 %334, i32* %4, align 4
  br label %335

335:                                              ; preds = %333, %307, %230, %127
  %336 = load i32, i32* %4, align 4
  ret i32 %336
}

declare dso_local i32 @lpfc_idiag_mbxacc_dump_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_14__*) #1

declare dso_local i32 @lpfc_mbox_dev_check(%struct.lpfc_hba*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba*, %struct.TYPE_20__*) #1

declare dso_local i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba*, %struct.TYPE_20__*) #1

declare dso_local i32 @lpfc_sli4_post_sync_mbox(%struct.lpfc_hba*, %struct.TYPE_20__*) #1

declare dso_local i32 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_async_mbox_block(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_async_mbox_unblock(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_mbox_cmd_check(%struct.lpfc_hba*, %struct.TYPE_20__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_mbox_put(%struct.lpfc_hba*, %struct.TYPE_20__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
