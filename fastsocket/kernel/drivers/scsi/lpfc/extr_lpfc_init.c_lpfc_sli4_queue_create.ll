; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.lpfc_queue*, i32, i32, %struct.lpfc_queue*, %struct.lpfc_queue*, i32, i32, %struct.lpfc_queue*, i32, i32, %struct.lpfc_queue*, i32, i32, %struct.lpfc_queue*, %struct.lpfc_queue**, %struct.lpfc_queue**, %struct.lpfc_queue**, i32, i32, i8* }
%struct.lpfc_queue = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@LPFC_MQE_SIZE = common dso_local global i32 0, align 4
@LPFC_MQE_DEF_COUNT = common dso_local global i32 0, align 4
@LPFC_WQE_SIZE = common dso_local global i32 0, align 4
@LPFC_WQE_DEF_COUNT = common dso_local global i32 0, align 4
@LPFC_RQE_SIZE = common dso_local global i32 0, align 4
@LPFC_RQE_DEF_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"2576 Failed allocate memory for fast-path EQ record array\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"2577 Failed allocate memory for fast-path CQ record array\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"2578 Failed allocate memory for fast-path WQ record array\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"2545 Failed allocate memory for fast-path CQ map\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"0497 Failed allocate EQ (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"0499 Failed allocate fast-path FCP CQ (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"0503 Failed allocate fast-path FCP WQ (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"0500 Failed allocate slow-path mailbox CQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"0501 Failed allocate slow-path ELS CQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"0505 Failed allocate slow-path MQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"0504 Failed allocate slow-path ELS WQ\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"0506 Failed allocate receive HRQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"0507 Failed allocate receive DRQ\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_queue_create(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ERANGE, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %358

13:                                               ; preds = %1
  %14 = load i32, i32* @LPFC_MQE_SIZE, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 9
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @LPFC_MQE_DEF_COUNT, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 8
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @LPFC_WQE_SIZE, align 4
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @LPFC_WQE_DEF_COUNT, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @LPFC_RQE_SIZE, align 4
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @LPFC_RQE_DEF_COUNT, align 4
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.lpfc_queue**
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 16
  store %struct.lpfc_queue** %46, %struct.lpfc_queue*** %49, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 16
  %53 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %52, align 8
  %54 = icmp ne %struct.lpfc_queue** %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %13
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load i32, i32* @LOG_INIT, align 4
  %59 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %353

60:                                               ; preds = %13
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kzalloc(i32 %66, i32 %67)
  %69 = bitcast i8* %68 to %struct.lpfc_queue**
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 15
  store %struct.lpfc_queue** %69, %struct.lpfc_queue*** %72, align 8
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 15
  %76 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %75, align 8
  %77 = icmp ne %struct.lpfc_queue** %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %60
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = load i32, i32* @KERN_ERR, align 4
  %81 = load i32, i32* @LOG_INIT, align 4
  %82 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %353

83:                                               ; preds = %60
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 8, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @kzalloc(i32 %89, i32 %90)
  %92 = bitcast i8* %91 to %struct.lpfc_queue**
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 14
  store %struct.lpfc_queue** %92, %struct.lpfc_queue*** %95, align 8
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 14
  %99 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %98, align 8
  %100 = icmp ne %struct.lpfc_queue** %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %83
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = load i32, i32* @KERN_ERR, align 4
  %104 = load i32, i32* @LOG_INIT, align 4
  %105 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %353

106:                                              ; preds = %83
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i8* @kzalloc(i32 %112, i32 %113)
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 19
  store i8* %114, i8** %117, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 19
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %106
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %125 = load i32, i32* @KERN_ERR, align 4
  %126 = load i32, i32* @LOG_INIT, align 4
  %127 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %353

128:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %217, %128
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %220

135:                                              ; preds = %129
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 18
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 17
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %136, i32 %140, i32 %144)
  store %struct.lpfc_queue* %145, %struct.lpfc_queue** %4, align 8
  %146 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %147 = icmp ne %struct.lpfc_queue* %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %135
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = load i32, i32* @KERN_ERR, align 4
  %151 = load i32, i32* @LOG_INIT, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  br label %353

154:                                              ; preds = %135
  %155 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 16
  %159 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %159, i64 %161
  store %struct.lpfc_queue* %155, %struct.lpfc_queue** %162, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %169 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 8
  %172 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %163, i32 %167, i32 %171)
  store %struct.lpfc_queue* %172, %struct.lpfc_queue** %4, align 8
  %173 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %174 = icmp ne %struct.lpfc_queue* %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %154
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %177 = load i32, i32* @KERN_ERR, align 4
  %178 = load i32, i32* @LOG_INIT, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  br label %353

181:                                              ; preds = %154
  %182 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 15
  %186 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %186, i64 %188
  store %struct.lpfc_queue* %182, %struct.lpfc_queue** %189, align 8
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %190, i32 %194, i32 %198)
  store %struct.lpfc_queue* %199, %struct.lpfc_queue** %4, align 8
  %200 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %201 = icmp ne %struct.lpfc_queue* %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %181
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %204 = load i32, i32* @KERN_ERR, align 4
  %205 = load i32, i32* @LOG_INIT, align 4
  %206 = load i32, i32* %5, align 4
  %207 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  br label %353

208:                                              ; preds = %181
  %209 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 14
  %213 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %213, i64 %215
  store %struct.lpfc_queue* %209, %struct.lpfc_queue** %216, align 8
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %5, align 4
  br label %129

220:                                              ; preds = %129
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 12
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %227 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 11
  %229 = load i32, i32* %228, align 8
  %230 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %221, i32 %225, i32 %229)
  store %struct.lpfc_queue* %230, %struct.lpfc_queue** %4, align 8
  %231 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %232 = icmp ne %struct.lpfc_queue* %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %220
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %235 = load i32, i32* @KERN_ERR, align 4
  %236 = load i32, i32* @LOG_INIT, align 4
  %237 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %234, i32 %235, i32 %236, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %353

238:                                              ; preds = %220
  %239 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %241 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 13
  store %struct.lpfc_queue* %239, %struct.lpfc_queue** %242, align 8
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %245 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 12
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %249 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 8
  %252 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %243, i32 %247, i32 %251)
  store %struct.lpfc_queue* %252, %struct.lpfc_queue** %4, align 8
  %253 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %254 = icmp ne %struct.lpfc_queue* %253, null
  br i1 %254, label %260, label %255

255:                                              ; preds = %238
  %256 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %257 = load i32, i32* @KERN_ERR, align 4
  %258 = load i32, i32* @LOG_INIT, align 4
  %259 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %256, i32 %257, i32 %258, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %353

260:                                              ; preds = %238
  %261 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %262 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %263 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 10
  store %struct.lpfc_queue* %261, %struct.lpfc_queue** %264, align 8
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %267 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %271 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %265, i32 %269, i32 %273)
  store %struct.lpfc_queue* %274, %struct.lpfc_queue** %4, align 8
  %275 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %276 = icmp ne %struct.lpfc_queue* %275, null
  br i1 %276, label %282, label %277

277:                                              ; preds = %260
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %279 = load i32, i32* @KERN_ERR, align 4
  %280 = load i32, i32* @LOG_INIT, align 4
  %281 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %278, i32 %279, i32 %280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %353

282:                                              ; preds = %260
  %283 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %285 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 7
  store %struct.lpfc_queue* %283, %struct.lpfc_queue** %286, align 8
  %287 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %288 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %289 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %293 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 8
  %296 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %287, i32 %291, i32 %295)
  store %struct.lpfc_queue* %296, %struct.lpfc_queue** %4, align 8
  %297 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %298 = icmp ne %struct.lpfc_queue* %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %282
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %301 = load i32, i32* @KERN_ERR, align 4
  %302 = load i32, i32* @LOG_INIT, align 4
  %303 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %300, i32 %301, i32 %302, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %353

304:                                              ; preds = %282
  %305 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %306 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %307 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 4
  store %struct.lpfc_queue* %305, %struct.lpfc_queue** %308, align 8
  %309 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %311 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %315 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %309, i32 %313, i32 %317)
  store %struct.lpfc_queue* %318, %struct.lpfc_queue** %4, align 8
  %319 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %320 = icmp ne %struct.lpfc_queue* %319, null
  br i1 %320, label %326, label %321

321:                                              ; preds = %304
  %322 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %323 = load i32, i32* @KERN_ERR, align 4
  %324 = load i32, i32* @LOG_INIT, align 4
  %325 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %322, i32 %323, i32 %324, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %353

326:                                              ; preds = %304
  %327 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %328 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %329 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 3
  store %struct.lpfc_queue* %327, %struct.lpfc_queue** %330, align 8
  %331 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %332 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %333 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %337 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = call %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %331, i32 %335, i32 %339)
  store %struct.lpfc_queue* %340, %struct.lpfc_queue** %4, align 8
  %341 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %342 = icmp ne %struct.lpfc_queue* %341, null
  br i1 %342, label %348, label %343

343:                                              ; preds = %326
  %344 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %345 = load i32, i32* @KERN_ERR, align 4
  %346 = load i32, i32* @LOG_INIT, align 4
  %347 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %344, i32 %345, i32 %346, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %353

348:                                              ; preds = %326
  %349 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %350 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %351 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 0
  store %struct.lpfc_queue* %349, %struct.lpfc_queue** %352, align 8
  store i32 0, i32* %2, align 4
  br label %358

353:                                              ; preds = %343, %321, %299, %277, %255, %233, %202, %175, %148, %123, %101, %78, %55
  %354 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %355 = call i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba* %354)
  %356 = load i32, i32* @ENOMEM, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %2, align 4
  br label %358

358:                                              ; preds = %353, %348, %10
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
