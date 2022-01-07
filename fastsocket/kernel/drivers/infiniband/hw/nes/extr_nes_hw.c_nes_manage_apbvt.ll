; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_manage_apbvt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_manage_apbvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i32 }
%struct.nes_hw_cqp_wqe = type { i32 }
%struct.nes_cqp_request = type { i32, i64, i64, i32, i32, i32, %struct.nes_hw_cqp_wqe }

@NES_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get a cqp_request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s APBV for local port=%u(0x%04x), nic_index=%u\0A\00", align 1
@NES_MANAGE_APBVT_ADD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i32 0, align 4
@NES_CQP_MANAGE_APBVT = common dso_local global i64 0, align 8
@NES_CQP_APBVT_ADD = common dso_local global i64 0, align 8
@NES_CQP_WQE_ID_IDX = common dso_local global i32 0, align 4
@NES_CQP_APBVT_NIC_SHIFT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Waiting for CQP completion for APBVT.\0A\00", align 1
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Completed, ret=%u,  CQP Major:Minor codes = 0x%04X:0x%04X\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_manage_apbvt(%struct.nes_vnic* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nes_device*, align 8
  %11 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %12 = alloca %struct.nes_cqp_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.nes_vnic* %0, %struct.nes_vnic** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %16 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %15, i32 0, i32 0
  %17 = load %struct.nes_device*, %struct.nes_device** %16, align 8
  store %struct.nes_device* %17, %struct.nes_device** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %19 = call %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device* %18)
  store %struct.nes_cqp_request* %19, %struct.nes_cqp_request** %12, align 8
  %20 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %21 = icmp eq %struct.nes_cqp_request* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @NES_DBG_QP, align 4
  %24 = call i32 (i32, i8*, ...) @nes_debug(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %120

27:                                               ; preds = %4
  %28 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %29 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %31 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %30, i32 0, i32 6
  store %struct.nes_hw_cqp_wqe* %31, %struct.nes_hw_cqp_wqe** %11, align 8
  %32 = load i32, i32* @NES_DBG_QP, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @NES_MANAGE_APBVT_ADD, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i32, i8*, ...) @nes_debug(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %37, i64 %38, i64 %39, i64 %40)
  %42 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %11, align 8
  %43 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %44 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %42, %struct.nes_device* %43)
  %45 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %11, align 8
  %46 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NES_CQP_WQE_OPCODE_IDX, align 4
  %49 = load i64, i64* @NES_CQP_MANAGE_APBVT, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @NES_MANAGE_APBVT_ADD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %27
  %54 = load i64, i64* @NES_CQP_APBVT_ADD, align 8
  br label %56

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ 0, %55 ]
  %58 = or i64 %49, %57
  %59 = call i32 @set_wqe_32bit_value(i32 %47, i32 %48, i64 %58)
  %60 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %11, align 8
  %61 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NES_CQP_WQE_ID_IDX, align 4
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @NES_CQP_APBVT_NIC_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = or i64 %66, %67
  %69 = call i32 @set_wqe_32bit_value(i32 %62, i32 %63, i64 %68)
  %70 = load i32, i32* @NES_DBG_QP, align 4
  %71 = call i32 (i32, i8*, ...) @nes_debug(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %73 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %72, i32 0, i32 5
  %74 = call i32 @atomic_set(i32* %73, i32 2)
  %75 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %76 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %77 = call i32 @nes_post_cqp_request(%struct.nes_device* %75, %struct.nes_cqp_request* %76)
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @NES_MANAGE_APBVT_ADD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %56
  %82 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %83 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %86 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %91 = call i32 @wait_event_timeout(i32 %84, i32 %89, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %81, %56
  %93 = load i32, i32* @NES_DBG_QP, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %96 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %99 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i8*, ...) @nes_debug(i32 %93, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %94, i64 %97, i32 %100)
  %102 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %103 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %14, align 8
  %105 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %106 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %12, align 8
  %107 = call i32 @nes_put_cqp_request(%struct.nes_device* %105, %struct.nes_cqp_request* %106)
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %92
  %111 = load i32, i32* @ETIME, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %120

113:                                              ; preds = %92
  %114 = load i64, i64* %14, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %120

119:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %116, %110, %22
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device*) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i32, i64) #1

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
