; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_mii_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_mii_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ax_device = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ax_mii_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax_mii_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ax_device*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.net_device*
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %8)
  store %struct.ax_device* %9, %struct.ax_device** %4, align 8
  %10 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %11 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %10, i32 0, i32 2
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %15 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %14, i32 0, i32 3
  %16 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %17 = call i32 @netif_msg_link(%struct.ax_device* %16)
  %18 = call i32 @mii_check_media(i32* %15, i32 %17, i32 0)
  %19 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %20 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %19, i32 0, i32 2
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %24 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %34 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %37 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %36, i32 0, i32 0
  %38 = call i32 @add_timer(%struct.TYPE_2__* %37)
  br label %39

39:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_link(%struct.ax_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
