; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_process_aeq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_process_aeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i64 }
%struct.nes_hw_aeq = type { i64, i64, %struct.nes_hw_aeqe* }
%struct.nes_hw_aeqe = type { i64* }

@NES_AEQE_MISC_IDX = common dso_local global i64 0, align 8
@NES_AEQE_VALID = common dso_local global i64 0, align 8
@NES_AEQE_COMP_QP_CQ_ID_IDX = common dso_local global i64 0, align 8
@NES_AEQE_QP = common dso_local global i64 0, align 8
@NES_AEQE_CQ = common dso_local global i64 0, align 8
@NES_FIRST_QPN = common dso_local global i64 0, align 8
@NES_DBG_AEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Processing CQP related AE, misc = 0x%04X\0A\00", align 1
@NES_AEQ_ALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_hw_aeq*)* @nes_process_aeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_process_aeq(%struct.nes_device* %0, %struct.nes_hw_aeq* %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_hw_aeq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nes_hw_aeqe*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store %struct.nes_hw_aeq* %1, %struct.nes_hw_aeq** %4, align 8
  %10 = load %struct.nes_hw_aeq*, %struct.nes_hw_aeq** %4, align 8
  %11 = getelementptr inbounds %struct.nes_hw_aeq, %struct.nes_hw_aeq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.nes_hw_aeq*, %struct.nes_hw_aeq** %4, align 8
  %14 = getelementptr inbounds %struct.nes_hw_aeq, %struct.nes_hw_aeq* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %87, %2
  %17 = load %struct.nes_hw_aeq*, %struct.nes_hw_aeq** %4, align 8
  %18 = getelementptr inbounds %struct.nes_hw_aeq, %struct.nes_hw_aeq* %17, i32 0, i32 2
  %19 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %19, i64 %20
  store %struct.nes_hw_aeqe* %21, %struct.nes_hw_aeqe** %9, align 8
  %22 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %9, align 8
  %23 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %22, i32 0, i32 0
  %24 = load volatile i64*, i64** %23, align 8
  %25 = load i64, i64* @NES_AEQE_MISC_IDX, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @le32_to_cpu(i64 %27)
  %29 = load i64, i64* @NES_AEQE_VALID, align 8
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %88

33:                                               ; preds = %16
  %34 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %9, align 8
  %35 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %34, i32 0, i32 0
  %36 = load volatile i64*, i64** %35, align 8
  %37 = load i64, i64* @NES_AEQE_MISC_IDX, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @le32_to_cpu(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %9, align 8
  %42 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %41, i32 0, i32 0
  %43 = load volatile i64*, i64** %42, align 8
  %44 = load i64, i64* @NES_AEQE_COMP_QP_CQ_ID_IDX, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @le32_to_cpu(i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @NES_AEQE_QP, align 8
  %50 = load i64, i64* @NES_AEQE_CQ, align 8
  %51 = or i64 %49, %50
  %52 = and i64 %48, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %33
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @NES_FIRST_QPN, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %60 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %9, align 8
  %61 = call i32 @nes_process_iwarp_aeqe(%struct.nes_device* %59, %struct.nes_hw_aeqe* %60)
  br label %68

62:                                               ; preds = %54
  %63 = load i32, i32* @NES_DBG_AEQ, align 4
  %64 = load i64, i64* %7, align 8
  %65 = lshr i64 %64, 16
  %66 = trunc i64 %65 to i32
  %67 = call i32 @nes_debug(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %9, align 8
  %71 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %70, i32 0, i32 0
  %72 = load volatile i64*, i64** %71, align 8
  %73 = load i64, i64* @NES_AEQE_MISC_IDX, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i64 0, i64* %5, align 8
  br label %80

80:                                               ; preds = %79, %69
  %81 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %82 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NES_AEQ_ALLOC, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @nes_write32(i64 %85, i32 65536)
  br label %87

87:                                               ; preds = %80
  br i1 true, label %16, label %88

88:                                               ; preds = %87, %32
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.nes_hw_aeq*, %struct.nes_hw_aeq** %4, align 8
  %91 = getelementptr inbounds %struct.nes_hw_aeq, %struct.nes_hw_aeq* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  ret void
}

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @nes_process_iwarp_aeqe(%struct.nes_device*, %struct.nes_hw_aeqe*) #1

declare dso_local i32 @nes_debug(i32, i8*, i32) #1

declare dso_local i32 @nes_write32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
