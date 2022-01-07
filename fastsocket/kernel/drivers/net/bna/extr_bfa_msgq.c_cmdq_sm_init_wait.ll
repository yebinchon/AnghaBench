; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_cmdq_sm_init_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_cmdq_sm_init_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_cmdq = type { i32 }

@cmdq_sm_stopped = common dso_local global i32 0, align 4
@BFA_MSGQ_CMDQ_F_DB_UPDATE = common dso_local global i32 0, align 4
@cmdq_sm_dbell_wait = common dso_local global i32 0, align 4
@cmdq_sm_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_cmdq*, i32)* @cmdq_sm_init_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_sm_init_wait(%struct.bfa_msgq_cmdq* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_msgq_cmdq*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_msgq_cmdq* %0, %struct.bfa_msgq_cmdq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %38 [
    i32 128, label %6
    i32 131, label %6
    i32 129, label %10
    i32 130, label %16
  ]

6:                                                ; preds = %2, %2
  %7 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %8 = load i32, i32* @cmdq_sm_stopped, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq* %7, i32 %8)
  br label %41

10:                                               ; preds = %2
  %11 = load i32, i32* @BFA_MSGQ_CMDQ_F_DB_UPDATE, align 4
  %12 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BFA_MSGQ_CMDQ_F_DB_UPDATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i32, i32* @BFA_MSGQ_CMDQ_F_DB_UPDATE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %31 = load i32, i32* @cmdq_sm_dbell_wait, align 4
  %32 = call i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq* %30, i32 %31)
  br label %37

33:                                               ; preds = %16
  %34 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %35 = load i32, i32* @cmdq_sm_ready, align 4
  %36 = call i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %23
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bfa_sm_fault(i32 %39)
  br label %41

41:                                               ; preds = %38, %37, %10, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
