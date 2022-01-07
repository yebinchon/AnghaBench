; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i2400m = type { i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"(net_dev %p [i2400m %p])\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"(net_dev %p [i2400m %p]) = 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @i2400m_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.i2400m* @net_dev_to_i2400m(%struct.net_device* %7)
  store %struct.i2400m* %8, %struct.i2400m** %3, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %14 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.net_device* %12, %struct.i2400m* %13)
  %15 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %16 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %15, i32 0, i32 2
  %17 = call i64 @cancel_work_sync(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %21 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %20, i32 0, i32 1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %26 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %30 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %29, i32 0, i32 1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %33 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %32, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %33, align 8
  %34 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %35 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %39 = call i32 @i2400m_put(%struct.i2400m* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %24, %19, %1
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %46 = call i32 @d_fnend(i32 3, %struct.device* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %44, %struct.i2400m* %45)
  ret i32 0
}

declare dso_local %struct.i2400m* @net_dev_to_i2400m(%struct.net_device*) #1

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.net_device*, %struct.i2400m*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i2400m_put(%struct.i2400m*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.net_device*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
