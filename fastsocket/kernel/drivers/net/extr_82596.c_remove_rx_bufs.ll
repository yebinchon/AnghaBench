; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_82596.c_remove_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_82596.c_remove_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.i596_private* }
%struct.i596_private = type { %struct.i596_rbd* }
%struct.i596_rbd = type { i32* }

@rx_ring_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @remove_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_rx_bufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i596_private*, align 8
  %4 = alloca %struct.i596_rbd*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.i596_private*, %struct.i596_private** %7, align 8
  store %struct.i596_private* %8, %struct.i596_private** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %10 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %9, i32 0, i32 0
  %11 = load %struct.i596_rbd*, %struct.i596_rbd** %10, align 8
  store %struct.i596_rbd* %11, %struct.i596_rbd** %4, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @rx_ring_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.i596_rbd*, %struct.i596_rbd** %4, align 8
  %18 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %32

22:                                               ; preds = %16
  %23 = load %struct.i596_rbd*, %struct.i596_rbd** %4, align 8
  %24 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @dev_kfree_skb(i32* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.i596_rbd*, %struct.i596_rbd** %4, align 8
  %31 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %30, i32 1
  store %struct.i596_rbd* %31, %struct.i596_rbd** %4, align 8
  br label %12

32:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
