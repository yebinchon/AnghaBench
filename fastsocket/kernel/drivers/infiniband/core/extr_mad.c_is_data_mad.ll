; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_is_data_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_is_data_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_TYPE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_agent_private*, %struct.ib_mad_hdr*)* @is_data_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_data_mad(%struct.ib_mad_agent_private* %0, %struct.ib_mad_hdr* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_hdr*, align 8
  %5 = alloca %struct.ib_rmpp_mad*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_hdr* %1, %struct.ib_mad_hdr** %4, align 8
  %6 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %7 = bitcast %struct.ib_mad_hdr* %6 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %7, %struct.ib_rmpp_mad** %5, align 8
  %8 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %15 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %14, i32 0, i32 0
  %16 = call i32 @ib_get_rmpp_flags(%struct.TYPE_4__* %15)
  %17 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %5, align 8
  %22 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_MGMT_RMPP_TYPE_DATA, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %20, %13, %2
  %28 = phi i1 [ true, %13 ], [ true, %2 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @ib_get_rmpp_flags(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
