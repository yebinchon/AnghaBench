; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_cmdq_sm_stopped_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_cmdq_sm_stopped_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_cmdq = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.bfa_msgq_cmd_entry = type { i32 }

@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_cmdq*)* @cmdq_sm_stopped_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_sm_stopped_entry(%struct.bfa_msgq_cmdq* %0) #0 {
  %2 = alloca %struct.bfa_msgq_cmdq*, align 8
  %3 = alloca %struct.bfa_msgq_cmd_entry*, align 8
  store %struct.bfa_msgq_cmdq* %0, %struct.bfa_msgq_cmdq** %2, align 8
  %4 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %4, i32 0, i32 6
  store i64 0, i64* %5, align 8
  %6 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %22, %1
  %17 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %17, i32 0, i32 0
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %23, i32 0, i32 0
  %25 = call i32 @bfa_q_deq(i32* %24, %struct.bfa_msgq_cmd_entry** %3)
  %26 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry* %26, i32 0, i32 0
  %28 = call i32 @bfa_q_qe_init(i32* %27)
  %29 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %3, align 8
  %30 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %31 = call i32 @call_cmdq_ent_cbfn(%struct.bfa_msgq_cmd_entry* %29, i32 %30)
  br label %16

32:                                               ; preds = %16
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.bfa_msgq_cmd_entry**) #1

declare dso_local i32 @bfa_q_qe_init(i32*) #1

declare dso_local i32 @call_cmdq_ent_cbfn(%struct.bfa_msgq_cmd_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
