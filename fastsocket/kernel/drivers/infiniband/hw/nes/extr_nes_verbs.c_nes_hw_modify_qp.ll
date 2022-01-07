; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_hw_modify_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_hw_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_qp = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nes_hw_cqp_wqe = type { i32* }
%struct.nes_cqp_request = type { i32, i64, i32, i32, i32, i32, %struct.nes_hw_cqp_wqe }

@NES_DBG_MOD_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"QP%u, refcount=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get a cqp_request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i64 0, align 8
@NES_CQP_MODIFY_QP = common dso_local global i32 0, align 4
@NES_CQP_QP_TYPE_IWARP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"using next_iwarp_state=%08x, wqe_words=%08x\0A\00", align 1
@NES_CQP_WQE_ID_IDX = common dso_local global i64 0, align 8
@NES_CQP_QP_WQE_CONTEXT_LOW_IDX = common dso_local global i32 0, align 4
@NES_CQP_QP_IWARP_STATE_MASK = common dso_local global i32 0, align 4
@NES_CQP_QP_IWARP_STATE_TERMINATE = common dso_local global i32 0, align 4
@NES_CQP_QP_TERM_DONT_SEND_TERM_MSG = common dso_local global i32 0, align 4
@NES_CQP_OP_TERMLEN_SHIFT = common dso_local global i32 0, align 4
@NES_CQP_QP_WQE_NEW_MSS_IDX = common dso_local global i64 0, align 8
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [96 x i8] c"Modify iwarp QP%u completed, wait_event_timeout ret=%u, CQP Major:Minor codes = 0x%04X:0x%04X.\0A\00", align 1
@.str.4 = private unnamed_addr constant [94 x i8] c"Modify iwarp QP%u failedCQP Major:Minor codes = 0x%04X:0x%04X, intended next state = 0x%08X.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_hw_modify_qp(%struct.nes_device* %0, %struct.nes_qp* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nes_device*, align 8
  %8 = alloca %struct.nes_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %13 = alloca %struct.nes_cqp_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %7, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @NES_DBG_MOD_QP, align 4
  %17 = load %struct.nes_qp*, %struct.nes_qp** %8, align 8
  %18 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nes_qp*, %struct.nes_qp** %8, align 8
  %22 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %21, i32 0, i32 2
  %23 = call i32 @atomic_read(i32* %22)
  %24 = call i32 (i32, i8*, ...) @nes_debug(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %26 = call %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device* %25)
  store %struct.nes_cqp_request* %26, %struct.nes_cqp_request** %13, align 8
  %27 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %28 = icmp eq %struct.nes_cqp_request* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load i32, i32* @NES_DBG_MOD_QP, align 4
  %31 = call i32 (i32, i8*, ...) @nes_debug(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %178

34:                                               ; preds = %5
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %39 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %43

40:                                               ; preds = %34
  %41 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %42 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %45 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %44, i32 0, i32 6
  store %struct.nes_hw_cqp_wqe* %45, %struct.nes_hw_cqp_wqe** %12, align 8
  %46 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %12, align 8
  %47 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %50 = load i32, i32* @NES_CQP_MODIFY_QP, align 4
  %51 = load i32, i32* @NES_CQP_QP_TYPE_IWARP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @set_wqe_32bit_value(i32* %48, i64 %49, i32 %54)
  %56 = load i32, i32* @NES_DBG_MOD_QP, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %12, align 8
  %59 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = call i32 (i32, i8*, ...) @nes_debug(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %64)
  %66 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %12, align 8
  %67 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %68 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %66, %struct.nes_device* %67)
  %69 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %12, align 8
  %70 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @NES_CQP_WQE_ID_IDX, align 8
  %73 = load %struct.nes_qp*, %struct.nes_qp** %8, align 8
  %74 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @set_wqe_32bit_value(i32* %71, i64 %72, i32 %76)
  %78 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %12, align 8
  %79 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @NES_CQP_QP_WQE_CONTEXT_LOW_IDX, align 4
  %82 = load %struct.nes_qp*, %struct.nes_qp** %8, align 8
  %83 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @set_wqe_64bit_value(i32* %80, i32 %81, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @NES_CQP_QP_IWARP_STATE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @NES_CQP_QP_IWARP_STATE_TERMINATE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %43
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @NES_CQP_QP_TERM_DONT_SEND_TERM_MSG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 3
  %100 = ashr i32 %99, 2
  %101 = load i32, i32* @NES_CQP_OP_TERMLEN_SHIFT, align 4
  %102 = shl i32 %100, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %12, align 8
  %104 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @NES_CQP_QP_WQE_NEW_MSS_IDX, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @set_wqe_32bit_value(i32* %105, i64 %106, i32 %107)
  br label %109

109:                                              ; preds = %97, %92, %43
  %110 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %111 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %110, i32 0, i32 5
  %112 = call i32 @atomic_set(i32* %111, i32 2)
  %113 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %114 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %115 = call i32 @nes_post_cqp_request(%struct.nes_device* %113, %struct.nes_cqp_request* %114)
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %177

118:                                              ; preds = %109
  %119 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %120 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %123 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %128 = call i32 @wait_event_timeout(i32 %121, i32 %126, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* @NES_DBG_MOD_QP, align 4
  %130 = load %struct.nes_qp*, %struct.nes_qp** %8, align 8
  %131 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %136 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %139 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @nes_debug(i32 %129, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134, i32 %137, i32 %140)
  %142 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %143 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %118
  %148 = load i32, i32* @NES_DBG_MOD_QP, align 4
  %149 = load %struct.nes_qp*, %struct.nes_qp** %8, align 8
  %150 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %154 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %157 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (i32, i8*, ...) @nes_debug(i32 %148, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %155, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %147, %118
  %162 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %163 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %13, align 8
  %164 = call i32 @nes_put_cqp_request(%struct.nes_device* %162, %struct.nes_cqp_request* %163)
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* @ETIME, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %178

170:                                              ; preds = %161
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %6, align 4
  br label %178

176:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %178

177:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %176, %173, %167, %29
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_64bit_value(i32*, i32, i32) #1

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
