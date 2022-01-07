; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_get_mad_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_get_mad_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mad_rmpp_recv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IB_MGMT_RMPP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mad_rmpp_recv*)* @get_mad_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mad_len(%struct.mad_rmpp_recv* %0) #0 {
  %2 = alloca %struct.mad_rmpp_recv*, align 8
  %3 = alloca %struct.ib_rmpp_mad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mad_rmpp_recv* %0, %struct.mad_rmpp_recv** %2, align 8
  %7 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %8 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %12, %struct.ib_rmpp_mad** %3, align 8
  %13 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %14 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ib_get_mad_data_offset(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 8, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @IB_MGMT_RMPP_DATA, align 4
  %23 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %24 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = sub nsw i32 %22, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IB_MGMT_RMPP_DATA, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %1
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %2, align 8
  %39 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %37, %42
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  ret i32 %45
}

declare dso_local i32 @ib_get_mad_data_offset(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
