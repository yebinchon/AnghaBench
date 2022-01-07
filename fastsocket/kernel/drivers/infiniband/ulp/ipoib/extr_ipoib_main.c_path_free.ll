; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_path = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"path_free\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ipoib_path*)* @path_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_free(%struct.net_device* %0, %struct.ipoib_path* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_path*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ipoib_path* %1, %struct.ipoib_path** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %8 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %7, i32 0, i32 2
  %9 = call %struct.sk_buff* @__skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %12)
  br label %6

14:                                               ; preds = %6
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netdev_priv(%struct.net_device* %15)
  %17 = call i32 @ipoib_dbg(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %20 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ipoib_del_neighs_by_gid(%struct.net_device* %18, i32 %23)
  %25 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %26 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %31 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ipoib_put_ah(i64 %32)
  br label %34

34:                                               ; preds = %29, %14
  %35 = load %struct.ipoib_path*, %struct.ipoib_path** %4, align 8
  %36 = call i32 @kfree(%struct.ipoib_path* %35)
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_dbg(i32, i8*) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_del_neighs_by_gid(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_put_ah(i64) #1

declare dso_local i32 @kfree(%struct.ipoib_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
