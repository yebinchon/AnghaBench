; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_flush_wqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_flush_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_qp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nes_cqp_request = type { i32, i64, i32, i32, i32, %struct.nes_hw_cqp_wqe, i32 }
%struct.nes_hw_cqp_wqe = type { i8** }

@NES_IWARP_CQE_MAJOR_FLUSH = common dso_local global i32 0, align 4
@NES_IWARP_CQE_MINOR_FLUSH = common dso_local global i32 0, align 4
@NES_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get a cqp_request.\0A\00", align 1
@NES_CQP_FLUSH_SQ = common dso_local global i32 0, align 4
@NES_CQP_FLUSH_MAJ_MIN = common dso_local global i32 0, align 4
@CQE_MAJOR_DRV = common dso_local global i32 0, align 4
@NES_CQP_FLUSH_RQ = common dso_local global i32 0, align 4
@NES_CQP_QP_WQE_FLUSH_SQ_CODE = common dso_local global i64 0, align 8
@NES_CQP_QP_WQE_FLUSH_RQ_CODE = common dso_local global i64 0, align 8
@NES_CQP_FLUSH_WQES = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i64 0, align 8
@NES_CQP_WQE_ID_IDX = common dso_local global i64 0, align 8
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Flush SQ QP WQEs completed, ret=%u, CQP Major:Minor codes = 0x%04X:0x%04X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_wqes(%struct.nes_device* %0, %struct.nes_qp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca %struct.nes_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nes_cqp_request*, align 8
  %10 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %5, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @NES_IWARP_CQE_MAJOR_FLUSH, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* @NES_IWARP_CQE_MINOR_FLUSH, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @NES_IWARP_CQE_MAJOR_FLUSH, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* @NES_IWARP_CQE_MINOR_FLUSH, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %23 = call %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device* %22)
  store %struct.nes_cqp_request* %23, %struct.nes_cqp_request** %9, align 8
  %24 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %25 = icmp eq %struct.nes_cqp_request* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @NES_DBG_QP, align 4
  %28 = call i32 (i32, i8*, ...) @nes_debug(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %158

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %34 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %36 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %35, i32 0, i32 6
  %37 = call i32 @atomic_set(i32* %36, i32 2)
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %40 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %43 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %42, i32 0, i32 5
  store %struct.nes_hw_cqp_wqe* %43, %struct.nes_hw_cqp_wqe** %10, align 8
  %44 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %45 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %46 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %44, %struct.nes_device* %45)
  %47 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %48 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @NES_CQP_FLUSH_SQ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32, i32* @NES_CQP_FLUSH_MAJ_MIN, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @CQE_MAJOR_DRV, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %63 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %67 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %56, %51, %41
  %69 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %70 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @NES_CQP_FLUSH_RQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i32, i32* @NES_CQP_FLUSH_MAJ_MIN, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @CQE_MAJOR_DRV, align 4
  %83 = shl i32 %82, 16
  %84 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %85 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  store i32 %87, i32* %12, align 4
  %88 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %89 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %78, %73, %68
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @NES_CQP_FLUSH_MAJ_MIN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %99 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = load i64, i64* @NES_CQP_QP_WQE_FLUSH_SQ_CODE, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  store i8* %97, i8** %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %106 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* @NES_CQP_QP_WQE_FLUSH_RQ_CODE, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %104, i8** %109, align 8
  br label %110

110:                                              ; preds = %95, %90
  %111 = load i32, i32* @NES_CQP_FLUSH_WQES, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %111, %112
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %116 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  store i8* %114, i8** %119, align 8
  %120 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %121 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %10, align 8
  %126 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i64, i64* @NES_CQP_WQE_ID_IDX, align 8
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  store i8* %124, i8** %129, align 8
  %130 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %131 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %132 = call i32 @nes_post_cqp_request(%struct.nes_device* %130, %struct.nes_cqp_request* %131)
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %110
  %136 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %137 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %140 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %145 = call i32 @wait_event_timeout(i32 %138, i32 %143, i32 %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* @NES_DBG_QP, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %149 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %152 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @nes_debug(i32 %146, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %150, i32 %153)
  %155 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %156 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %9, align 8
  %157 = call i32 @nes_put_cqp_request(%struct.nes_device* %155, %struct.nes_cqp_request* %156)
  br label %158

158:                                              ; preds = %26, %135, %110
  ret void
}

declare dso_local %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device*) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @nes_post_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @nes_put_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
