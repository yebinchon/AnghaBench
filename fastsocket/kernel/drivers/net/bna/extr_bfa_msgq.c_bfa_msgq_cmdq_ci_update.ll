; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_cmdq_ci_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_cmdq_ci_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_cmdq = type { i32, i64 }
%struct.bfi_mbmsg = type { i32 }
%struct.bfi_msgq_i2h_db = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_msgq_cmd_entry = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@CMDQ_E_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_cmdq*, %struct.bfi_mbmsg*)* @bfa_msgq_cmdq_ci_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_msgq_cmdq_ci_update(%struct.bfa_msgq_cmdq* %0, %struct.bfi_mbmsg* %1) #0 {
  %3 = alloca %struct.bfa_msgq_cmdq*, align 8
  %4 = alloca %struct.bfi_mbmsg*, align 8
  %5 = alloca %struct.bfi_msgq_i2h_db*, align 8
  %6 = alloca %struct.bfa_msgq_cmd_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_msgq_cmdq* %0, %struct.bfa_msgq_cmdq** %3, align 8
  store %struct.bfi_mbmsg* %1, %struct.bfi_mbmsg** %4, align 8
  %8 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %9 = bitcast %struct.bfi_mbmsg* %8 to %struct.bfi_msgq_i2h_db*
  store %struct.bfi_msgq_i2h_db* %9, %struct.bfi_msgq_i2h_db** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.bfi_msgq_i2h_db*, %struct.bfi_msgq_i2h_db** %5, align 8
  %11 = getelementptr inbounds %struct.bfi_msgq_i2h_db, %struct.bfi_msgq_i2h_db* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ntohs(i32 %13)
  %15 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %48, %2
  %18 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %24, i32 0, i32 0
  %26 = call i64 @bfa_q_first(i32* %25)
  %27 = inttoptr i64 %26 to %struct.bfa_msgq_cmd_entry*
  store %struct.bfa_msgq_cmd_entry* %27, %struct.bfa_msgq_cmd_entry** %6, align 8
  %28 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %6, align 8
  %29 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ntohs(i32 %32)
  %34 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %35 = call i64 @BFA_MSGQ_FREE_CNT(%struct.bfa_msgq_cmdq* %34)
  %36 = icmp sle i64 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %23
  %38 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %6, align 8
  %39 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry* %38, i32 0, i32 0
  %40 = call i32 @list_del(i32* %39)
  %41 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %42 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %6, align 8
  %43 = call i32 @__cmd_copy(%struct.bfa_msgq_cmdq* %41, %struct.bfa_msgq_cmd_entry* %42)
  store i32 1, i32* %7, align 4
  %44 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %6, align 8
  %45 = load i32, i32* @BFA_STATUS_OK, align 4
  %46 = call i32 @call_cmdq_ent_cbfn(%struct.bfa_msgq_cmd_entry* %44, i32 %45)
  br label %48

47:                                               ; preds = %23
  br label %49

48:                                               ; preds = %37
  br label %17

49:                                               ; preds = %47, %17
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %54 = load i32, i32* @CMDQ_E_POST, align 4
  %55 = call i32 @bfa_fsm_send_event(%struct.bfa_msgq_cmdq* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @bfa_q_first(i32*) #1

declare dso_local i64 @BFA_MSGQ_FREE_CNT(%struct.bfa_msgq_cmdq*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__cmd_copy(%struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmd_entry*) #1

declare dso_local i32 @call_cmdq_ent_cbfn(%struct.bfa_msgq_cmd_entry*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_msgq_cmdq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
