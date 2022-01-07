; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-transfer.c_cn_ulog_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-transfer.c_cn_ulog_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i32, i32 }
%struct.netlink_skb_parms = type { i32 }
%struct.dm_ulog_request = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@receiving_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Incomplete message received (expected %u, got %u): [%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @cn_ulog_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_ulog_callback(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca %struct.dm_ulog_request*, align 8
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  %6 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %7 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %6, i64 1
  %8 = bitcast %struct.cn_msg* %7 to %struct.dm_ulog_request*
  store %struct.dm_ulog_request* %8, %struct.dm_ulog_request** %5, align 8
  %9 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %4, align 8
  %10 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @cap_raised(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %45

16:                                               ; preds = %2
  %17 = call i32 @spin_lock(i32* @receiving_list_lock)
  %18 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %19 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %24 = call i32 @fill_pkg(%struct.cn_msg* %23, %struct.dm_ulog_request* null)
  br label %43

25:                                               ; preds = %16
  %26 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %27 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %33 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %36 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DMERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 4, i32 %34, i32 %37)
  br label %42

39:                                               ; preds = %25
  %40 = load %struct.dm_ulog_request*, %struct.dm_ulog_request** %5, align 8
  %41 = call i32 @fill_pkg(%struct.cn_msg* null, %struct.dm_ulog_request* %40)
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %22
  %44 = call i32 @spin_unlock(i32* @receiving_list_lock)
  br label %45

45:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32 @cap_raised(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fill_pkg(%struct.cn_msg*, %struct.dm_ulog_request*) #1

declare dso_local i32 @DMERR(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
