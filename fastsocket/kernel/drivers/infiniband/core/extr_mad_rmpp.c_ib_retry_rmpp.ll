; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ib_retry_rmpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_ib_retry_rmpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { i32 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_UNHANDLED = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_PROCESSED = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_CONSUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_retry_rmpp(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad_send_wr_private*, align 8
  %4 = alloca %struct.ib_rmpp_mad*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %3, align 8
  %6 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %7 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  store %struct.ib_rmpp_mad* %9, %struct.ib_rmpp_mad** %4, align 8
  %10 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %4, align 8
  %11 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %10, i32 0, i32 0
  %12 = call i32 @ib_get_rmpp_flags(i32* %11)
  %13 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @IB_RMPP_RESULT_UNHANDLED, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %20 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %23 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @IB_RMPP_RESULT_PROCESSED, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %18
  %30 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %31 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %34 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %36 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %39 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %41 = call i32 @send_next_seg(%struct.ib_mad_send_wr_private* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @IB_RMPP_RESULT_PROCESSED, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %29
  %47 = load i32, i32* @IB_RMPP_RESULT_CONSUMED, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %44, %27, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ib_get_rmpp_flags(i32*) #1

declare dso_local i32 @send_next_seg(%struct.ib_mad_send_wr_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
