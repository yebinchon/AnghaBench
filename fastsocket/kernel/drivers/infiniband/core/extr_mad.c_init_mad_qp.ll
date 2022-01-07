; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_init_mad_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_init_mad_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_port_private = type { i32 }
%struct.ib_mad_qp_info = type { i32, i64, i32*, i32, i32, i32, i32, %struct.ib_mad_port_private* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_port_private*, %struct.ib_mad_qp_info*)* @init_mad_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mad_qp(%struct.ib_mad_port_private* %0, %struct.ib_mad_qp_info* %1) #0 {
  %3 = alloca %struct.ib_mad_port_private*, align 8
  %4 = alloca %struct.ib_mad_qp_info*, align 8
  store %struct.ib_mad_port_private* %0, %struct.ib_mad_port_private** %3, align 8
  store %struct.ib_mad_qp_info* %1, %struct.ib_mad_qp_info** %4, align 8
  %5 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %6 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %7 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %6, i32 0, i32 7
  store %struct.ib_mad_port_private* %5, %struct.ib_mad_port_private** %7, align 8
  %8 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %9 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %10 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %9, i32 0, i32 6
  %11 = call i32 @init_mad_queue(%struct.ib_mad_qp_info* %8, i32* %10)
  %12 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %13 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %14 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %13, i32 0, i32 5
  %15 = call i32 @init_mad_queue(%struct.ib_mad_qp_info* %12, i32* %14)
  %16 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %17 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %16, i32 0, i32 4
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %20 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %23 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %25 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %27 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %26, i32 0, i32 0
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  ret void
}

declare dso_local i32 @init_mad_queue(%struct.ib_mad_qp_info*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
