; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ib_process_rmpp_send_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ib_process_rmpp_send_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i64, i64, i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32, %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ib_mad_send_wc = type { i64 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_UNHANDLED = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_TYPE_DATA = common dso_local global i64 0, align 8
@IB_RMPP_RESULT_INTERNAL = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_RMPP_RESULT_PROCESSED = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i64 0, align 8
@IB_RMPP_RESULT_CONSUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_process_rmpp_send_wc(%struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mad_send_wr_private*, align 8
  %5 = alloca %struct.ib_mad_send_wc*, align 8
  %6 = alloca %struct.ib_rmpp_mad*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %4, align 8
  store %struct.ib_mad_send_wc* %1, %struct.ib_mad_send_wc** %5, align 8
  %8 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %9 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %10, align 8
  store %struct.ib_rmpp_mad* %11, %struct.ib_rmpp_mad** %6, align 8
  %12 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %13 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %12, i32 0, i32 0
  %14 = call i32 @ib_get_rmpp_flags(%struct.TYPE_4__* %13)
  %15 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IB_RMPP_RESULT_UNHANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %22 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_MGMT_RMPP_TYPE_DATA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @IB_RMPP_RESULT_INTERNAL, align 4
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %20
  %30 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %5, align 8
  %31 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IB_WC_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %37 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_WC_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @IB_RMPP_RESULT_PROCESSED, align 4
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %35
  %44 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %45 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @IB_RMPP_RESULT_PROCESSED, align 4
  store i32 %49, i32* %3, align 4
  br label %99

50:                                               ; preds = %43
  %51 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %52 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %55 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %61 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @msecs_to_jiffies(i32 %63)
  %65 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %66 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @IB_RMPP_RESULT_PROCESSED, align 4
  store i32 %67, i32* %3, align 4
  br label %99

68:                                               ; preds = %50
  %69 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %70 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %73 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %68
  %77 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %78 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %81 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %79, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76, %68
  %86 = load i32, i32* @IB_RMPP_RESULT_PROCESSED, align 4
  store i32 %86, i32* %3, align 4
  br label %99

87:                                               ; preds = %76
  %88 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %4, align 8
  %89 = call i32 @send_next_seg(%struct.ib_mad_send_wr_private* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i64, i64* @IB_WC_GENERAL_ERR, align 8
  %94 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %5, align 8
  %95 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @IB_RMPP_RESULT_PROCESSED, align 4
  store i32 %96, i32* %3, align 4
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @IB_RMPP_RESULT_CONSUMED, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %92, %85, %59, %48, %41, %27, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ib_get_rmpp_flags(%struct.TYPE_4__*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @send_next_seg(%struct.ib_mad_send_wr_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
