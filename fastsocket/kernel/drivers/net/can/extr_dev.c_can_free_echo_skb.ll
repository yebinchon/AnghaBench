; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_free_echo_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_free_echo_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_priv = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_free_echo_skb(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.can_priv* %7, %struct.can_priv** %5, align 8
  %8 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %9 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %18 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree_skb(i32* %23)
  %25 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %26 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
