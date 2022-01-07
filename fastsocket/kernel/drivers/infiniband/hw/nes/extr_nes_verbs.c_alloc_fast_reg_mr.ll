; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_alloc_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_alloc_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i64, i32 }
%struct.nes_pd = type { i32 }
%struct.nes_hw_cqp_wqe = type { i32* }
%struct.nes_cqp_request = type { i32, i64, i64, i32, i32, i32, %struct.nes_hw_cqp_wqe }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NES_DBG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get a cqp_request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"alloc_fast_reg_mr: page_count = %d, region_length = %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Out of Pbls\0A\00", align 1
@NES_CQP_ALLOCATE_STAG = common dso_local global i32 0, align 4
@NES_CQP_STAG_MR = common dso_local global i32 0, align 4
@NES_CQP_STAG_PBL_BLK_SIZE = common dso_local global i32 0, align 4
@NES_CQP_STAG_VA_TO = common dso_local global i32 0, align 4
@NES_CQP_STAG_REM_ACC_EN = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_STAG_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_VA_LOW_IDX = common dso_local global i32 0, align 4
@NES_CQP_STAG_WQE_LEN_LOW_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PA_LOW_IDX = common dso_local global i32 0, align 4
@NES_CQP_STAG_WQE_PBL_LEN_IDX = common dso_local global i64 0, align 8
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [101 x i8] c"Allocate STag 0x%08X completed, wait_event_timeout ret = %u, CQP Major:Minor codes = 0x%04X:0x%04X.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_device*, %struct.nes_pd*, i32, i32)* @alloc_fast_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_fast_reg_mr(%struct.nes_device* %0, %struct.nes_pd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_pd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %11 = alloca %struct.nes_cqp_request*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nes_adapter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %6, align 8
  store %struct.nes_pd* %1, %struct.nes_pd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %19 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %18, i32 0, i32 0
  %20 = load %struct.nes_adapter*, %struct.nes_adapter** %19, align 8
  store %struct.nes_adapter* %20, %struct.nes_adapter** %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %17, align 4
  %24 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %25 = call %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device* %24)
  store %struct.nes_cqp_request* %25, %struct.nes_cqp_request** %11, align 8
  %26 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %27 = icmp eq %struct.nes_cqp_request* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* @NES_DBG_MR, align 4
  %30 = call i32 (i32, i8*, ...) @nes_debug(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %218

33:                                               ; preds = %4
  %34 = load i32, i32* @NES_DBG_MR, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 (i32, i8*, ...) @nes_debug(i32 %34, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %39 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %41 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %40, i32 0, i32 6
  store %struct.nes_hw_cqp_wqe* %41, %struct.nes_hw_cqp_wqe** %10, align 8
  %42 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %43 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %47 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %33
  %51 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %52 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %56 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %55, i32 0, i32 1
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %71

59:                                               ; preds = %33
  %60 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %61 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %60, i32 0, i32 1
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* @NES_DBG_MR, align 4
  %65 = call i32 (i32, i8*, ...) @nes_debug(i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %67 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %68 = call i32 @nes_free_cqp_request(%struct.nes_device* %66, %struct.nes_cqp_request* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %218

71:                                               ; preds = %50
  %72 = load i32, i32* @NES_CQP_ALLOCATE_STAG, align 4
  %73 = load i32, i32* @NES_CQP_STAG_MR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @NES_CQP_STAG_PBL_BLK_SIZE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @NES_CQP_STAG_VA_TO, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NES_CQP_STAG_REM_ACC_EN, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %15, align 4
  %81 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %82 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %83 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %81, %struct.nes_device* %82)
  %84 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %85 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @set_wqe_32bit_value(i32* %86, i64 %87, i32 %88)
  %90 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %91 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX, align 8
  %94 = call i32 @set_wqe_32bit_value(i32* %92, i64 %93, i32 1)
  %95 = load i32, i32* %17, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, -16777216
  %98 = call i32 @cpu_to_le32(i32 %97)
  %99 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %100 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load %struct.nes_pd*, %struct.nes_pd** %7, align 8
  %105 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 32767
  %108 = call i32 @cpu_to_le32(i32 %107)
  %109 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %110 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %108
  store i32 %115, i32* %113, align 4
  %116 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %117 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @NES_CQP_STAG_WQE_STAG_IDX, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @set_wqe_32bit_value(i32* %118, i64 %119, i32 %120)
  %122 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %123 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @NES_CQP_STAG_WQE_VA_LOW_IDX, align 4
  %126 = call i32 @set_wqe_64bit_value(i32* %124, i32 %125, i32 0)
  %127 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %128 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @NES_CQP_STAG_WQE_LEN_LOW_IDX, align 8
  %131 = call i32 @set_wqe_32bit_value(i32* %129, i64 %130, i32 0)
  %132 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %133 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @NES_CQP_STAG_WQE_PA_LOW_IDX, align 4
  %136 = call i32 @set_wqe_64bit_value(i32* %134, i32 %135, i32 0)
  %137 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %138 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @NES_CQP_STAG_WQE_PBL_LEN_IDX, align 8
  %141 = load i32, i32* %9, align 4
  %142 = mul nsw i32 %141, 8
  %143 = call i32 @set_wqe_32bit_value(i32* %139, i64 %140, i32 %142)
  %144 = load i32, i32* @NES_CQP_STAG_PBL_BLK_SIZE, align 4
  %145 = call i32 @cpu_to_le32(i32 %144)
  %146 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %147 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %145
  store i32 %152, i32* %150, align 4
  %153 = call i32 (...) @barrier()
  %154 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %155 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %154, i32 0, i32 5
  %156 = call i32 @atomic_set(i32* %155, i32 2)
  %157 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %158 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %159 = call i32 @nes_post_cqp_request(%struct.nes_device* %157, %struct.nes_cqp_request* %158)
  %160 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %161 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %164 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 0, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %169 = call i32 @wait_event_timeout(i32 %162, i32 %167, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* @NES_DBG_MR, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %174 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %177 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, ...) @nes_debug(i32 %170, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %171, i32 %172, i64 %175, i32 %178)
  %180 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %181 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %16, align 8
  %183 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %184 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %11, align 8
  %185 = call i32 @nes_put_cqp_request(%struct.nes_device* %183, %struct.nes_cqp_request* %184)
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %71
  %189 = load i64, i64* %16, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188, %71
  %192 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %193 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %192, i32 0, i32 1
  %194 = load i64, i64* %12, align 8
  %195 = call i32 @spin_lock_irqsave(i32* %193, i64 %194)
  %196 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %197 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = load %struct.nes_adapter*, %struct.nes_adapter** %14, align 8
  %201 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %200, i32 0, i32 1
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  br label %204

204:                                              ; preds = %191, %188
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @ETIME, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %5, align 4
  br label %218

210:                                              ; preds = %204
  %211 = load i64, i64* %16, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* @EIO, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %5, align 4
  br label %218

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %216
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %217, %213, %207, %59, %28
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device*) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_free_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @set_wqe_64bit_value(i32*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nes_post_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @nes_put_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
