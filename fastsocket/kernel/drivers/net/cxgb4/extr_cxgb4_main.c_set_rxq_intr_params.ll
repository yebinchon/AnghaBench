; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_rxq_intr_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_rxq_intr_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.sge_rspq = type { i64, i32, i32, i64 }

@FW_PARAMS_MNEM_DMAQ = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH = common dso_local global i32 0, align 4
@QINTR_CNT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_rspq*, i32, i32)* @set_rxq_intr_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rxq_intr_params(%struct.adapter* %0, %struct.sge_rspq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @closest_thres(i32* %23, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %27 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %21
  %31 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %32 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load i32, i32* @FW_PARAMS_MNEM_DMAQ, align 4
  %38 = call i64 @FW_PARAMS_MNEM(i32 %37)
  %39 = load i32, i32* @FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH, align 4
  %40 = call i64 @FW_PARAMS_PARAM_X(i32 %39)
  %41 = or i64 %38, %40
  %42 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %43 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @FW_PARAMS_PARAM_YZ(i32 %44)
  %46 = or i64 %41, %45
  store i64 %46, i64* %11, align 8
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.adapter*, %struct.adapter** %6, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @t4_set_params(%struct.adapter* %47, i32 %50, i32 %53, i32 0, i32 1, i64* %11, i64* %12)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %87

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %30, %21
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %63 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %18
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %73

68:                                               ; preds = %64
  %69 = load %struct.adapter*, %struct.adapter** %6, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @closest_timer(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %67
  %74 = phi i32 [ 6, %67 ], [ %72, %68 ]
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @QINTR_TIMER_IDX(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ugt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @QINTR_CNT_EN, align 4
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = or i32 %76, %83
  %85 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %86 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %57
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @closest_thres(i32*, i32) #1

declare dso_local i64 @FW_PARAMS_MNEM(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_X(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_YZ(i32) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @closest_timer(i32*, i32) #1

declare dso_local i32 @QINTR_TIMER_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
