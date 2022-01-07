; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, %struct.nes_adapter* }
%struct.nes_adapter = type { i64, i64* }
%struct.nes_qp = type { i32, i32, i32, i64, i8*, i8* }
%struct.nes_hw_aeqe = type { i32* }

@NES_CQP_QP_IWARP_STATE_TERMINATE = common dso_local global i32 0, align 4
@NES_CQP_QP_TERM_DONT_SEND_FIN = common dso_local global i32 0, align 4
@NES_TERM_SENT = common dso_local global i32 0, align 4
@NES_AEQE_MISC_IDX = common dso_local global i64 0, align 8
@NES_AEQE_TCP_STATE_MASK = common dso_local global i32 0, align 4
@NES_AEQE_TCP_STATE_SHIFT = common dso_local global i32 0, align 4
@NES_AEQE_IWARP_STATE_MASK = common dso_local global i32 0, align 4
@NES_AEQE_IWARP_STATE_SHIFT = common dso_local global i32 0, align 4
@NES_AEQE_COMP_QP_CQ_ID_IDX = common dso_local global i64 0, align 8
@NES_FIRST_QPN = common dso_local global i64 0, align 8
@NES_CQP_QP_TERM_DONT_SEND_TERM_MSG = common dso_local global i32 0, align 4
@NES_TERM_DONE = common dso_local global i32 0, align 4
@NES_CQP_QP_IWARP_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_qp*, %struct.nes_hw_aeqe*, i32)* @nes_terminate_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_terminate_connection(%struct.nes_device* %0, %struct.nes_qp* %1, %struct.nes_hw_aeqe* %2, i32 %3) #0 {
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca %struct.nes_qp*, align 8
  %7 = alloca %struct.nes_hw_aeqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nes_adapter*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %5, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %6, align 8
  store %struct.nes_hw_aeqe* %2, %struct.nes_hw_aeqe** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @NES_CQP_QP_IWARP_STATE_TERMINATE, align 4
  %19 = load i32, i32* @NES_CQP_QP_TERM_DONT_SEND_FIN, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %16, align 4
  %21 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %22 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %21, i32 0, i32 1
  %23 = load %struct.nes_adapter*, %struct.nes_adapter** %22, align 8
  store %struct.nes_adapter* %23, %struct.nes_adapter** %17, align 8
  %24 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %25 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NES_TERM_SENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %142

31:                                               ; preds = %4
  %32 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %7, align 8
  %33 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @NES_AEQE_MISC_IDX, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @NES_AEQE_TCP_STATE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @NES_AEQE_TCP_STATE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %13, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @NES_AEQE_IWARP_STATE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @NES_AEQE_IWARP_STATE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %14, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %12, align 8
  %56 = load %struct.nes_adapter*, %struct.nes_adapter** %17, align 8
  %57 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %7, align 8
  %60 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @NES_AEQE_COMP_QP_CQ_ID_IDX, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = load i64, i64* @NES_FIRST_QPN, align 8
  %67 = sub i64 %65, %66
  %68 = getelementptr inbounds i64, i64* %58, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %31
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  br label %142

78:                                               ; preds = %31
  %79 = load i64, i64* %9, align 8
  %80 = inttoptr i64 %79 to %struct.nes_qp*
  store %struct.nes_qp* %80, %struct.nes_qp** %6, align 8
  %81 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %82 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %81, i32 0, i32 2
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load i8*, i8** %14, align 8
  %86 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %87 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %90 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %93 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %96 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %98 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %97, i32 0, i32 2
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.nes_adapter*, %struct.nes_adapter** %17, align 8
  %102 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %78
  %106 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @nes_bld_terminate_hdr(%struct.nes_qp* %106, i64 %107, i32 %108)
  store i32 %109, i32* %15, align 4
  br label %114

110:                                              ; preds = %78
  %111 = load i32, i32* @NES_CQP_QP_TERM_DONT_SEND_TERM_MSG, align 4
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %116 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @NES_TERM_DONE, align 4
  %121 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %122 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %124 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %125 = load i32, i32* @NES_CQP_QP_IWARP_STATE_ERROR, align 4
  %126 = call i32 @nes_hw_modify_qp(%struct.nes_device* %123, %struct.nes_qp* %124, i32 %125, i32 0, i32 0)
  %127 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %128 = call i32 @nes_cm_disconn(%struct.nes_qp* %127)
  br label %142

129:                                              ; preds = %114
  %130 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %131 = call i32 @nes_terminate_start_timer(%struct.nes_qp* %130)
  %132 = load i32, i32* @NES_TERM_SENT, align 4
  %133 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %134 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %138 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @nes_hw_modify_qp(%struct.nes_device* %137, %struct.nes_qp* %138, i32 %139, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %30, %72, %129, %119
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_bld_terminate_hdr(%struct.nes_qp*, i64, i32) #1

declare dso_local i32 @nes_hw_modify_qp(%struct.nes_device*, %struct.nes_qp*, i32, i32, i32) #1

declare dso_local i32 @nes_cm_disconn(%struct.nes_qp*) #1

declare dso_local i32 @nes_terminate_start_timer(%struct.nes_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
