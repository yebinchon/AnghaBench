; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pmf.c_smt_get_ptab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pmf.c_smt_get_ptab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_p_tab = type { i64 }

@p_tab = common dso_local global %struct.s_p_tab* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s_p_tab* (i64)* @smt_get_ptab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s_p_tab* @smt_get_ptab(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.s_p_tab*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.s_p_tab*, %struct.s_p_tab** @p_tab, align 8
  store %struct.s_p_tab* %4, %struct.s_p_tab** %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.s_p_tab*, %struct.s_p_tab** %3, align 8
  %7 = getelementptr inbounds %struct.s_p_tab, %struct.s_p_tab* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load %struct.s_p_tab*, %struct.s_p_tab** %3, align 8
  %12 = getelementptr inbounds %struct.s_p_tab, %struct.s_p_tab* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %13, %14
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.s_p_tab*, %struct.s_p_tab** %3, align 8
  %21 = getelementptr inbounds %struct.s_p_tab, %struct.s_p_tab* %20, i32 1
  store %struct.s_p_tab* %21, %struct.s_p_tab** %3, align 8
  br label %5

22:                                               ; preds = %16
  %23 = load %struct.s_p_tab*, %struct.s_p_tab** %3, align 8
  %24 = getelementptr inbounds %struct.s_p_tab, %struct.s_p_tab* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load %struct.s_p_tab*, %struct.s_p_tab** %3, align 8
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi %struct.s_p_tab* [ %28, %27 ], [ null, %29 ]
  ret %struct.s_p_tab* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
