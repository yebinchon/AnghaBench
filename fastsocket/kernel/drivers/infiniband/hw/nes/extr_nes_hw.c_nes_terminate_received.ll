; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_qp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nes_hw_aeqe = type { i32* }

@NES_AEQE_MISC_IDX = common dso_local global i64 0, align 8
@NES_AEQE_Q2_DATA_WRITTEN = common dso_local global i32 0, align 4
@BAD_FRAME_OFFSET = common dso_local global i32 0, align 4
@NES_AEQE_AEID_DDP_LCE_LOCAL_CATASTROPHIC = common dso_local global i32 0, align 4
@NES_AEQE_AEID_DDP_UBE_INVALID_DDP_VERSION = common dso_local global i32 0, align 4
@NES_AEQE_AEID_DDP_UBE_INVALID_QN = common dso_local global i32 0, align 4
@NES_AEQE_AEID_DDP_INVALID_MSN_GAP_IN_MSN = common dso_local global i32 0, align 4
@NES_AEQE_AEID_DDP_UBE_INVALID_MO = common dso_local global i32 0, align 4
@NES_AEQE_AEID_RDMAP_ROE_INVALID_RDMAP_VERSION = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@NES_TERM_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_qp*, %struct.nes_hw_aeqe*)* @nes_terminate_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_terminate_received(%struct.nes_device* %0, %struct.nes_qp* %1, %struct.nes_hw_aeqe* %2) #0 {
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca %struct.nes_qp*, align 8
  %6 = alloca %struct.nes_hw_aeqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %4, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %5, align 8
  store %struct.nes_hw_aeqe* %2, %struct.nes_hw_aeqe** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %6, align 8
  %14 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @NES_AEQE_MISC_IDX, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NES_AEQE_Q2_DATA_WRITTEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %114

24:                                               ; preds = %3
  %25 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %26 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @BAD_FRAME_OFFSET, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @locate_mpa(i32* %32, i32 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  %46 = and i32 %45, 255
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 192
  %49 = icmp ne i32 %48, 64
  br i1 %49, label %50, label %52

50:                                               ; preds = %24
  %51 = load i32, i32* @NES_AEQE_AEID_DDP_LCE_LOCAL_CATASTROPHIC, align 4
  store i32 %51, i32* %12, align 4
  br label %93

52:                                               ; preds = %24
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 3
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @NES_AEQE_AEID_DDP_UBE_INVALID_DDP_VERSION, align 4
  store i32 %57, i32* %12, align 4
  br label %92

58:                                               ; preds = %52
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @NES_AEQE_AEID_DDP_UBE_INVALID_QN, align 4
  store i32 %65, i32* %12, align 4
  br label %91

66:                                               ; preds = %58
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @NES_AEQE_AEID_DDP_INVALID_MSN_GAP_IN_MSN, align 4
  store i32 %73, i32* %12, align 4
  br label %90

74:                                               ; preds = %66
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @NES_AEQE_AEID_DDP_UBE_INVALID_MO, align 4
  store i32 %81, i32* %12, align 4
  br label %89

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 192
  %85 = icmp ne i32 %84, 64
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @NES_AEQE_AEID_RDMAP_ROE_INVALID_RDMAP_VERSION, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90, %64
  br label %92

92:                                               ; preds = %91, %56
  br label %93

93:                                               ; preds = %92, %50
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, -65536
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @cpu_to_le32(i32 %101)
  %103 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %6, align 8
  %104 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @NES_AEQE_MISC_IDX, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %109 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %110 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %6, align 8
  %111 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %112 = call i32 @nes_terminate_connection(%struct.nes_device* %108, %struct.nes_qp* %109, %struct.nes_hw_aeqe* %110, i32 %111)
  br label %129

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %3
  %115 = load i32, i32* @NES_TERM_RCVD, align 4
  %116 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %117 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %121 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %122 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %124 = call i32 @nes_terminate_start_timer(%struct.nes_qp* %123)
  %125 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %126 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %127 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %6, align 8
  %128 = call i32 @nes_terminate_send_fin(%struct.nes_device* %125, %struct.nes_qp* %126, %struct.nes_hw_aeqe* %127)
  br label %129

129:                                              ; preds = %114, %96
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @locate_mpa(i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @nes_terminate_connection(%struct.nes_device*, %struct.nes_qp*, %struct.nes_hw_aeqe*, i32) #1

declare dso_local i32 @nes_terminate_start_timer(%struct.nes_qp*) #1

declare dso_local i32 @nes_terminate_send_fin(%struct.nes_device*, %struct.nes_qp*, %struct.nes_hw_aeqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
