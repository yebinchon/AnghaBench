; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_process_cc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_process_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_cc_mad = type { i32, i32, i32, i32 }
%struct.qib_ibport = type { i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_mad*, %struct.ib_mad*)* @process_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_cc(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_mad* %3, %struct.ib_mad* %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca %struct.ib_mad*, align 8
  %11 = alloca %struct.ib_cc_mad*, align 8
  %12 = alloca %struct.qib_ibport*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  store %struct.ib_mad* %4, %struct.ib_mad** %10, align 8
  %14 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %15 = bitcast %struct.ib_mad* %14 to %struct.ib_cc_mad*
  store %struct.ib_cc_mad* %15, %struct.ib_cc_mad** %11, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %16, i32 %17)
  store %struct.qib_ibport* %18, %struct.qib_ibport** %12, align 8
  %19 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %20 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %21 = bitcast %struct.ib_mad* %19 to i8*
  %22 = bitcast %struct.ib_mad* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %24 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %29 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %30 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %34 = bitcast %struct.ib_cc_mad* %33 to %struct.ib_smp*
  %35 = call i32 @reply(%struct.ib_smp* %34)
  store i32 %35, i32* %13, align 4
  br label %116

36:                                               ; preds = %5
  %37 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %38 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @check_cc_key(%struct.qib_ibport* %37, %struct.ib_cc_mad* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %116

44:                                               ; preds = %36
  %45 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %46 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %106 [
    i32 131, label %48
    i32 129, label %80
    i32 130, label %103
    i32 128, label %105
  ]

48:                                               ; preds = %44
  %49 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %50 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %71 [
    i32 134, label %52
    i32 132, label %56
    i32 135, label %61
    i32 133, label %66
  ]

52:                                               ; preds = %48
  %53 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %54 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %55 = call i32 @cc_get_classportinfo(%struct.ib_cc_mad* %53, %struct.ib_device* %54)
  store i32 %55, i32* %13, align 4
  br label %116

56:                                               ; preds = %48
  %57 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %58 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @cc_get_congestion_info(%struct.ib_cc_mad* %57, %struct.ib_device* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  br label %116

61:                                               ; preds = %48
  %62 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %63 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @cc_get_congestion_setting(%struct.ib_cc_mad* %62, %struct.ib_device* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  br label %116

66:                                               ; preds = %48
  %67 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %68 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @cc_get_congestion_control_table(%struct.ib_cc_mad* %67, %struct.ib_device* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  br label %116

71:                                               ; preds = %48
  %72 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %73 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %74 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %78 = bitcast %struct.ib_cc_mad* %77 to %struct.ib_smp*
  %79 = call i32 @reply(%struct.ib_smp* %78)
  store i32 %79, i32* %13, align 4
  br label %116

80:                                               ; preds = %44
  %81 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %82 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %94 [
    i32 135, label %84
    i32 133, label %89
  ]

84:                                               ; preds = %80
  %85 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %86 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @cc_set_congestion_setting(%struct.ib_cc_mad* %85, %struct.ib_device* %86, i32 %87)
  store i32 %88, i32* %13, align 4
  br label %116

89:                                               ; preds = %80
  %90 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %91 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @cc_set_congestion_control_table(%struct.ib_cc_mad* %90, %struct.ib_device* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  br label %116

94:                                               ; preds = %80
  %95 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %96 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %97 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %101 = bitcast %struct.ib_cc_mad* %100 to %struct.ib_smp*
  %102 = call i32 @reply(%struct.ib_smp* %101)
  store i32 %102, i32* %13, align 4
  br label %116

103:                                              ; preds = %44
  %104 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %104, i32* %13, align 4
  br label %116

105:                                              ; preds = %44
  br label %106

106:                                              ; preds = %44, %105
  %107 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %108 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %109 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %11, align 8
  %113 = bitcast %struct.ib_cc_mad* %112 to %struct.ib_smp*
  %114 = call i32 @reply(%struct.ib_smp* %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %103, %94, %89, %84, %71, %66, %61, %56, %52, %43, %27
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @check_cc_key(%struct.qib_ibport*, %struct.ib_cc_mad*, i32) #1

declare dso_local i32 @cc_get_classportinfo(%struct.ib_cc_mad*, %struct.ib_device*) #1

declare dso_local i32 @cc_get_congestion_info(%struct.ib_cc_mad*, %struct.ib_device*, i32) #1

declare dso_local i32 @cc_get_congestion_setting(%struct.ib_cc_mad*, %struct.ib_device*, i32) #1

declare dso_local i32 @cc_get_congestion_control_table(%struct.ib_cc_mad*, %struct.ib_device*, i32) #1

declare dso_local i32 @cc_set_congestion_setting(%struct.ib_cc_mad*, %struct.ib_device*, i32) #1

declare dso_local i32 @cc_set_congestion_control_table(%struct.ib_cc_mad*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
