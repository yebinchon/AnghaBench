; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_chan_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_chan_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.cycx_x25_channel = type { %struct.TYPE_4__, i32, i32, %struct.cycx_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cycx_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @cycx_x25_chan_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cycx_x25_chan_send(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cycx_x25_channel*, align 8
  %7 = alloca %struct.cycx_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.cycx_x25_channel* @netdev_priv(%struct.net_device* %10)
  store %struct.cycx_x25_channel* %11, %struct.cycx_x25_channel** %6, align 8
  %12 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %13 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %12, i32 0, i32 3
  %14 = load %struct.cycx_device*, %struct.cycx_device** %13, align 8
  store %struct.cycx_device* %14, %struct.cycx_device** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cycx_device*, %struct.cycx_device** %7, align 8
  %22 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.cycx_device*, %struct.cycx_device** %7, align 8
  %28 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  store i32 16, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.cycx_device*, %struct.cycx_device** %7, align 8
  %33 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %34 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %37 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @cycx_x25_send(%struct.cycx_device* %32, i32 %35, i32 %38, i32 %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %66

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @skb_pull(%struct.sk_buff* %51, i32 %52)
  store i32 1, i32* %3, align 4
  br label %66

54:                                               ; preds = %47
  %55 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %56 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %6, align 8
  %62 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add i32 %64, %60
  store i32 %65, i32* %63, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %54, %50, %46
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.cycx_x25_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @cycx_x25_send(%struct.cycx_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
