; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_msix_lpu_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_msix_lpu_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@__HFN_INT_CPQ_HALT_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_ERR_PSS_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_MBOX_LPU0_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_MBOX_LPU1_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_ERR_MASK_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_LL_HALT = common dso_local global i32 0, align 4
@__HFN_INT_ERR_PSS = common dso_local global i32 0, align 4
@__HFN_INT_MBOX_LPU0 = common dso_local global i32 0, align 4
@__HFN_INT_MBOX_LPU1 = common dso_local global i32 0, align 4
@__HFN_INT_ERR_MASK = common dso_local global i32 0, align 4
@__FW_INIT_HALT_P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_msix_lpu_err(%struct.bfa_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bfa_asic_id_ct2(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @__HFN_INT_CPQ_HALT_CT2, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @__HFN_INT_ERR_PSS_CT2, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @__HFN_INT_MBOX_LPU0_CT2, align 4
  %32 = load i32, i32* @__HFN_INT_MBOX_LPU1_CT2, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @__HFN_INT_ERR_MASK_CT2, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %64

38:                                               ; preds = %2
  %39 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @bfa_asic_id_ct(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @__HFN_INT_LL_HALT, align 4
  %49 = and i32 %47, %48
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ 0, %50 ]
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @__HFN_INT_ERR_PSS, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @__HFN_INT_MBOX_LPU0, align 4
  %58 = load i32, i32* @__HFN_INT_MBOX_LPU1, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @__HFN_INT_ERR_MASK, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %51, %23
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %69 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %68, i32 0, i32 0
  %70 = call i32 @bfa_ioc_mbox_isr(%struct.TYPE_11__* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @readl(i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @__FW_INIT_HALT_P, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %90 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @writel(i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %77, %74
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %100 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @readl(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %107 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @writel(i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %98, %95
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %115 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @writel(i32 %113, i32 %118)
  %120 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %121 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %120, i32 0, i32 0
  %122 = call i32 @bfa_ioc_error_isr(%struct.TYPE_11__* %121)
  br label %123

123:                                              ; preds = %112, %71
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @bfa_asic_id_ct2(i32) #1

declare dso_local i64 @bfa_asic_id_ct(i32) #1

declare dso_local i32 @bfa_ioc_mbox_isr(%struct.TYPE_11__*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_ioc_error_isr(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
