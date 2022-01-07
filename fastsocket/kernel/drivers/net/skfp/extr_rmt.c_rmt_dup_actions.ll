; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_rmt.c_rmt_dup_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_rmt.c_rmt_dup_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@SMT_E0138 = common dso_local global i32 0, align 4
@SMT_E0138_MSG = common dso_local global i32 0, align 4
@SMT_E0135 = common dso_local global i32 0, align 4
@SMT_E0135_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @rmt_dup_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmt_dup_actions(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %4 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %11 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %17 = load i32, i32* @SMT_E0138, align 4
  %18 = load i32, i32* @SMT_E0138_MSG, align 4
  %19 = call i32 @SMT_ERR_LOG(%struct.s_smc* %16, i32 %17, i32 %18)
  %20 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %21 = call i32 @rmt_reinsert_actions(%struct.s_smc* %20)
  br label %29

22:                                               ; preds = %9
  %23 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %24 = load i32, i32* @SMT_E0135, align 4
  %25 = load i32, i32* @SMT_E0135_MSG, align 4
  %26 = call i32 @SMT_ERR_LOG(%struct.s_smc* %23, i32 %24, i32 %25)
  %27 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %28 = call i32 @rmt_leave_actions(%struct.s_smc* %27)
  br label %29

29:                                               ; preds = %22, %15
  br label %30

30:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @SMT_ERR_LOG(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @rmt_reinsert_actions(%struct.s_smc*) #1

declare dso_local i32 @rmt_leave_actions(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
