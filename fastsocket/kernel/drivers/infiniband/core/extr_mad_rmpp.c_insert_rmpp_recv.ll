; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_insert_rmpp_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_insert_rmpp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.mad_rmpp_recv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mad_rmpp_recv* (%struct.ib_mad_agent_private*, %struct.mad_rmpp_recv*)* @insert_rmpp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mad_rmpp_recv* @insert_rmpp_recv(%struct.ib_mad_agent_private* %0, %struct.mad_rmpp_recv* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.mad_rmpp_recv*, align 8
  %5 = alloca %struct.mad_rmpp_recv*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.mad_rmpp_recv* %1, %struct.mad_rmpp_recv** %4, align 8
  %6 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %7 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %4, align 8
  %8 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mad_rmpp_recv* @find_rmpp_recv(%struct.ib_mad_agent_private* %6, i32 %9)
  store %struct.mad_rmpp_recv* %10, %struct.mad_rmpp_recv** %5, align 8
  %11 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %5, align 8
  %12 = icmp ne %struct.mad_rmpp_recv* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %4, align 8
  %15 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %14, i32 0, i32 0
  %16 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %17 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %5, align 8
  ret %struct.mad_rmpp_recv* %20
}

declare dso_local %struct.mad_rmpp_recv* @find_rmpp_recv(%struct.ib_mad_agent_private*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
