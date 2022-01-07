; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bmac_data = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@TX_TIMEOUT = common dso_local global i64 0, align 8
@bmac_tx_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bmac_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmac_set_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bmac_data*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bmac_data* @netdev_priv(%struct.net_device* %5)
  store %struct.bmac_data* %6, %struct.bmac_data** %3, align 8
  %7 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %8 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %12 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %17 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %16, i32 0, i32 2
  %18 = call i32 @del_timer(%struct.TYPE_3__* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @TX_TIMEOUT, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %24 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 %22, i64* %25, align 8
  %26 = load i32, i32* @bmac_tx_timeout, align 4
  %27 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %28 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = ptrtoint %struct.net_device* %30 to i64
  %32 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %33 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %36 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %35, i32 0, i32 2
  %37 = call i32 @add_timer(%struct.TYPE_3__* %36)
  %38 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %39 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.bmac_data*, %struct.bmac_data** %3, align 8
  %41 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %40, i32 0, i32 1
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local %struct.bmac_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
