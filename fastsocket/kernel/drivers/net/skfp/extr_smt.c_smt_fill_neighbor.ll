; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_fill_neighbor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_fill_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.smt_p_neighbor = type { i32, i32, i32, i32 }

@SMT_P_NEIGHBORS = common dso_local global i32 0, align 4
@INDEX_MAC = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.smt_p_neighbor*)* @smt_fill_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_fill_neighbor(%struct.s_smc* %0, %struct.smt_p_neighbor* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.smt_p_neighbor*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.smt_p_neighbor* %1, %struct.smt_p_neighbor** %4, align 8
  %5 = load %struct.smt_p_neighbor*, %struct.smt_p_neighbor** %4, align 8
  %6 = load i32, i32* @SMT_P_NEIGHBORS, align 4
  %7 = call i32 @SMTSETPARA(%struct.smt_p_neighbor* %5, i32 %6)
  %8 = load i32, i32* @INDEX_MAC, align 4
  %9 = load %struct.smt_p_neighbor*, %struct.smt_p_neighbor** %4, align 8
  %10 = getelementptr inbounds %struct.smt_p_neighbor, %struct.smt_p_neighbor* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %12 = call i32 @mac_index(%struct.s_smc* %11, i32 1)
  %13 = load %struct.smt_p_neighbor*, %struct.smt_p_neighbor** %4, align 8
  %14 = getelementptr inbounds %struct.smt_p_neighbor, %struct.smt_p_neighbor* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* @MAC0, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.smt_p_neighbor*, %struct.smt_p_neighbor** %4, align 8
  %24 = getelementptr inbounds %struct.smt_p_neighbor, %struct.smt_p_neighbor* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %26 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* @MAC0, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.smt_p_neighbor*, %struct.smt_p_neighbor** %4, align 8
  %34 = getelementptr inbounds %struct.smt_p_neighbor, %struct.smt_p_neighbor* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @SMTSETPARA(%struct.smt_p_neighbor*, i32) #1

declare dso_local i32 @mac_index(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
