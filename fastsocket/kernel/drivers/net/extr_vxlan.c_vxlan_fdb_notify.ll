; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_NEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_dev*, %struct.vxlan_fdb*, i32)* @vxlan_fdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_fdb_notify(%struct.vxlan_dev* %0, %struct.vxlan_fdb* %1, i32 %2) #0 {
  %4 = alloca %struct.vxlan_dev*, align 8
  %5 = alloca %struct.vxlan_fdb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %4, align 8
  store %struct.vxlan_fdb* %1, %struct.vxlan_fdb** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %11 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @dev_net(i32 %12)
  store %struct.net* %13, %struct.net** %7, align 8
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = call i32 (...) @vxlan_nlmsg_size()
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @nlmsg_new(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %25 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %5, align 8
  %28 = call i32 @first_remote_rtnl(%struct.vxlan_fdb* %27)
  %29 = call i32 @vxlan_fdb_info(%struct.sk_buff* %23, %struct.vxlan_dev* %24, %struct.vxlan_fdb* %25, i32 0, i32 0, i32 %26, i32 0, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  br label %47

41:                                               ; preds = %22
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load %struct.net*, %struct.net** %7, align 8
  %44 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call i32 @rtnl_notify(%struct.sk_buff* %42, %struct.net* %43, i32 0, i32 %44, i32* null, i32 %45)
  br label %55

47:                                               ; preds = %32, %21
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.net*, %struct.net** %7, align 8
  %52 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @rtnl_set_sk_err(%struct.net* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %41, %50, %47
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @vxlan_nlmsg_size(...) #1

declare dso_local i32 @vxlan_fdb_info(%struct.sk_buff*, %struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @first_remote_rtnl(%struct.vxlan_fdb*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
