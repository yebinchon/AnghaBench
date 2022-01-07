; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_znet.c_znet_transceiver_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_znet.c_znet_transceiver_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.znet_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @znet_transceiver_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @znet_transceiver_power(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.znet_private*, align 8
  %6 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.znet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.znet_private* %8, %struct.znet_private** %5, align 8
  %9 = load %struct.znet_private*, %struct.znet_private** %5, align 8
  %10 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @outb(i8 zeroext 16, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.znet_private*, %struct.znet_private** %5, align 8
  %17 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @inb(i64 %19)
  %21 = or i32 %20, 132
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.znet_private*, %struct.znet_private** %5, align 8
  %25 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 @inb(i64 %27)
  %29 = and i32 %28, -133
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  br label %31

31:                                               ; preds = %23, %15
  %32 = load i8, i8* %6, align 1
  %33 = load %struct.znet_private*, %struct.znet_private** %5, align 8
  %34 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @outb(i8 zeroext %32, i64 %36)
  ret void
}

declare dso_local %struct.znet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
