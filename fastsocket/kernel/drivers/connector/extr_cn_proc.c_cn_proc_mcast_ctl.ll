; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_cn_proc_mcast_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/connector/extr_cn_proc.c_cn_proc_mcast_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i32, i32, i32, i64 }
%struct.netlink_skb_parms = type { i32 }

@proc_event_num_listeners = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @cn_proc_mcast_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_proc_mcast_ctl(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %8 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %15 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %24 [
    i32 128, label %20
    i32 129, label %22
  ]

20:                                               ; preds = %13
  %21 = call i32 @atomic_inc(i32* @proc_event_num_listeners)
  br label %26

22:                                               ; preds = %13
  %23 = call i32 @atomic_dec(i32* @proc_event_num_listeners)
  br label %26

24:                                               ; preds = %13
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %22, %20
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %29 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %32 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cn_proc_ack(i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @cn_proc_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
