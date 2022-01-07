; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_l2_rcv_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_l2_rcv_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_percpu_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bnx2fc_l2_rcv_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_l2_rcv_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fcoe_percpu_s*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fcoe_percpu_s*
  store %struct.fcoe_percpu_s* %6, %struct.fcoe_percpu_s** %3, align 8
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @set_user_nice(i32 %7, i32 -20)
  %9 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %10 = call i32 @set_current_state(i32 %9)
  br label %11

11:                                               ; preds = %37, %1
  %12 = call i32 (...) @kthread_should_stop()
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = call i32 (...) @schedule()
  %17 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %18 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  br label %21

21:                                               ; preds = %26, %15
  %22 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %23 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %22, i32 0, i32 0
  %24 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_2__* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %28 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @bnx2fc_recv_frame(%struct.sk_buff* %31)
  %33 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %34 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  br label %21

37:                                               ; preds = %21
  %38 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %39 = call i32 @__set_current_state(i32 %38)
  %40 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %41 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  br label %11

44:                                               ; preds = %11
  %45 = load i32, i32* @TASK_RUNNING, align 4
  %46 = call i32 @__set_current_state(i32 %45)
  ret i32 0
}

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2fc_recv_frame(%struct.sk_buff*) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
