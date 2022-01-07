; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_rspq_sm_stopped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_rspq_sm_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_rspq = type { i32 }

@rspq_sm_init_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_rspq*, i32)* @rspq_sm_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rspq_sm_stopped(%struct.bfa_msgq_rspq* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_msgq_rspq*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_msgq_rspq* %0, %struct.bfa_msgq_rspq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %11 [
    i32 129, label %6
    i32 128, label %10
    i32 130, label %10
  ]

6:                                                ; preds = %2
  %7 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %8 = load i32, i32* @rspq_sm_init_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bfa_msgq_rspq* %7, i32 %8)
  br label %14

10:                                               ; preds = %2, %2
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bfa_sm_fault(i32 %12)
  br label %14

14:                                               ; preds = %11, %10, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_msgq_rspq*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
