; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_set_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_set_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_queue_sp_obj = type { i32 }
%struct.bnx2x_queue_state_params = type { i32 }

@BNX2X_Q_CMD_ACTIVATE = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_DEACTIVATE = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_state_params*)* @bnx2x_queue_set_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_queue_set_pending(%struct.bnx2x_queue_sp_obj* %0, %struct.bnx2x_queue_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %4 = alloca %struct.bnx2x_queue_state_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x_queue_sp_obj* %0, %struct.bnx2x_queue_sp_obj** %3, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %4, align 8
  %7 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BNX2X_Q_CMD_ACTIVATE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BNX2X_Q_CMD_DEACTIVATE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @BNX2X_Q_CMD_UPDATE, align 4
  store i32 %18, i32* %6, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
