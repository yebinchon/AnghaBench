; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_post_cqp_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_post_cqp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.nes_hw_cqp_wqe* }
%struct.nes_hw_cqp_wqe = type { i32* }
%struct.nes_cqp_request = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@NES_CQP_WQE_COMP_CTX_LOW_IDX = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i64 0, align 8
@NES_CQP_OPCODE_MASK = common dso_local global i64 0, align 8
@NES_CQP_DOWNLOAD_SEGMENT = common dso_local global i64 0, align 8
@NES_CQP_WQE_DL_COMP_CTX_LOW_IDX = common dso_local global i32 0, align 4
@NES_DBG_CQP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [150 x i8] c"CQP request (opcode 0x%02X), line 1 = 0x%08X put on CQPs SQ, request = %p, cqp_head = %u, cqp_tail = %u, cqp_size = %u, waiting = %d, refcount = %d.\0A\00", align 1
@NES_CQP_WQE_ID_IDX = common dso_local global i64 0, align 8
@NES_WQE_ALLOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"CQP request %p (opcode 0x%02X), line 1 = 0x%08X put on the pending queue.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_post_cqp_request(%struct.nes_device* %0, %struct.nes_cqp_request* %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_cqp_request*, align 8
  %5 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store %struct.nes_cqp_request* %1, %struct.nes_cqp_request** %4, align 8
  %11 = load i32, i32* @NES_CQP_WQE_COMP_CTX_LOW_IDX, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %13 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %18 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %22 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %20, %25
  %27 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %28 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %26, %30
  %32 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %33 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %140

39:                                               ; preds = %2
  %40 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %41 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %40, i32 0, i32 1
  %42 = call i64 @list_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %140

44:                                               ; preds = %39
  %45 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %46 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  store i64 %50, i64* %7, align 8
  %51 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %52 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %57 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %62 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %64, i64 %65
  store %struct.nes_hw_cqp_wqe* %66, %struct.nes_hw_cqp_wqe** %5, align 8
  %67 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %5, align 8
  %68 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %69 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %68, i32 0, i32 1
  %70 = call i32 @memcpy(%struct.nes_hw_cqp_wqe* %67, %struct.TYPE_4__* %69, i32 8)
  %71 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %5, align 8
  %72 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @NES_CQP_OPCODE_MASK, align 8
  %81 = and i64 %79, %80
  %82 = load i64, i64* @NES_CQP_DOWNLOAD_SEGMENT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %44
  %85 = load i32, i32* @NES_CQP_WQE_DL_COMP_CTX_LOW_IDX, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %44
  %87 = call i32 (...) @barrier()
  %88 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %89 = ptrtoint %struct.nes_cqp_request* %88 to i64
  store i64 %89, i64* %8, align 8
  %90 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %5, align 8
  %91 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @set_wqe_64bit_value(i32* %92, i32 %93, i64 %94)
  %96 = load i32, i32* @NES_DBG_CQP, align 4
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @NES_CQP_OPCODE_MASK, align 8
  %99 = and i64 %97, %98
  %100 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %5, align 8
  %101 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @NES_CQP_WQE_ID_IDX, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %108 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %109 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %113 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %117 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %121 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %124 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %123, i32 0, i32 2
  %125 = call i32 @atomic_read(i32* %124)
  %126 = call i32 (i32, i8*, ...) @nes_debug(i32 %96, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str, i64 0, i64 0), i64 %99, i32 %106, %struct.nes_cqp_request* %107, i32 %111, i32 %115, i32 %119, i32 %122, i32 %125)
  %127 = call i32 (...) @barrier()
  %128 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %129 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NES_WQE_ALLOC, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %134 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = or i32 25165824, %136
  %138 = call i32 @nes_write32(i64 %132, i32 %137)
  %139 = call i32 (...) @barrier()
  br label %166

140:                                              ; preds = %39, %2
  %141 = load i32, i32* @NES_DBG_CQP, align 4
  %142 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %143 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %144 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le32_to_cpu(i32 %149)
  %151 = and i32 %150, 63
  %152 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %153 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @NES_CQP_WQE_ID_IDX, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = call i32 (i32, i8*, ...) @nes_debug(i32 %141, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), %struct.nes_cqp_request* %142, i32 %151, i32 %159)
  %161 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %162 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %161, i32 0, i32 0
  %163 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %164 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %163, i32 0, i32 1
  %165 = call i32 @list_add_tail(i32* %162, i32* %164)
  br label %166

166:                                              ; preds = %140, %86
  %167 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %168 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 4
  %170 = load i64, i64* %6, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @memcpy(%struct.nes_hw_cqp_wqe*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @set_wqe_64bit_value(i32*, i32, i64) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
