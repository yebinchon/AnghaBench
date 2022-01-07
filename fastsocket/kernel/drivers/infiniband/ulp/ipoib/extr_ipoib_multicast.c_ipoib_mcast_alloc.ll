; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_mcast = type { i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipoib_mcast* (%struct.net_device*, i32)* @ipoib_mcast_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ipoib_mcast*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipoib_mcast*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call %struct.ipoib_mcast* @kzalloc(i32 32, i32 %14)
  store %struct.ipoib_mcast* %15, %struct.ipoib_mcast** %6, align 8
  %16 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %17 = icmp ne %struct.ipoib_mcast* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.ipoib_mcast* null, %struct.ipoib_mcast** %3, align 8
  br label %38

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %22 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %21, i32 0, i32 5
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %25 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %27 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %29 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %32 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %31, i32 0, i32 2
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %35 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %34, i32 0, i32 1
  %36 = call i32 @skb_queue_head_init(i32* %35)
  %37 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  store %struct.ipoib_mcast* %37, %struct.ipoib_mcast** %3, align 8
  br label %38

38:                                               ; preds = %19, %18
  %39 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %3, align 8
  ret %struct.ipoib_mcast* %39
}

declare dso_local %struct.ipoib_mcast* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
