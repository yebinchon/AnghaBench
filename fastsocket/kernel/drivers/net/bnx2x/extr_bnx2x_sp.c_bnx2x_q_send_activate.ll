; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_state_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bnx2x_queue_update_params }
%struct.bnx2x_queue_update_params = type { i32 }

@BNX2X_Q_UPDATE_ACTIVATE = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_ACTIVATE_CHNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_queue_state_params*)* @bnx2x_q_send_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_q_send_activate(%struct.bnx2x* %0, %struct.bnx2x_queue_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_queue_state_params*, align 8
  %5 = alloca %struct.bnx2x_queue_update_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %4, align 8
  %6 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %4, align 8
  %7 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.bnx2x_queue_update_params* %8, %struct.bnx2x_queue_update_params** %5, align 8
  %9 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %5, align 8
  %10 = call i32 @memset(%struct.bnx2x_queue_update_params* %9, i32 0, i32 4)
  %11 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE, align 4
  %12 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %12, i32 0, i32 0
  %14 = call i32 @__set_bit(i32 %11, i32* %13)
  %15 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE_CHNG, align 4
  %16 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %16, i32 0, i32 0
  %18 = call i32 @__set_bit(i32 %15, i32* %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %4, align 8
  %21 = call i32 @bnx2x_q_send_update(%struct.bnx2x* %19, %struct.bnx2x_queue_state_params* %20)
  ret i32 %21
}

declare dso_local i32 @memset(%struct.bnx2x_queue_update_params*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_q_send_update(%struct.bnx2x*, %struct.bnx2x_queue_state_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
