; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_clean_rx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_clean_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_percpu_s = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.fc_lport = type { i32 }
%struct.fcoe_rcv_info = type { %struct.fc_lport* }

@bnx2fc_global = common dso_local global %struct.fcoe_percpu_s zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @bnx2fc_clean_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_clean_rx_queue(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fcoe_percpu_s*, align 8
  %4 = alloca %struct.fcoe_rcv_info*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  store %struct.fcoe_percpu_s* @bnx2fc_global, %struct.fcoe_percpu_s** %3, align 8
  %9 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %10 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %14 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %13, i32 0, i32 0
  store %struct.sk_buff_head* %14, %struct.sk_buff_head** %5, align 8
  %15 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %15, i32 0, i32 1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  br label %19

19:                                               ; preds = %42, %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %22 = bitcast %struct.sk_buff_head* %21 to %struct.sk_buff*
  %23 = icmp ne %struct.sk_buff* %20, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call %struct.fcoe_rcv_info* @fcoe_dev_from_skb(%struct.sk_buff* %28)
  store %struct.fcoe_rcv_info* %29, %struct.fcoe_rcv_info** %4, align 8
  %30 = load %struct.fcoe_rcv_info*, %struct.fcoe_rcv_info** %4, align 8
  %31 = getelementptr inbounds %struct.fcoe_rcv_info, %struct.fcoe_rcv_info* %30, i32 0, i32 0
  %32 = load %struct.fc_lport*, %struct.fc_lport** %31, align 8
  %33 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %34 = icmp eq %struct.fc_lport* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %38 = call i32 @__skb_unlink(%struct.sk_buff* %36, %struct.sk_buff_head* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %35, %24
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %3, align 8
  %46 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.fcoe_rcv_info* @fcoe_dev_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
