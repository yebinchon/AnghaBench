; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c___ixgbevf_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c___ixgbevf_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32, i32 }
%struct.ixgbevf_adapter = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_ring*, i32)* @__ixgbevf_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ixgbevf_maybe_stop_tx(%struct.ixgbevf_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbevf_adapter*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ixgbevf_adapter* @netdev_priv(i32 %9)
  store %struct.ixgbevf_adapter* %10, %struct.ixgbevf_adapter** %6, align 8
  %11 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netif_stop_subqueue(i32 %13, i32 %16)
  %18 = call i32 (...) @smp_mb()
  %19 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %20 = call i32 @IXGBE_DESC_UNUSED(%struct.ixgbevf_ring* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netif_start_subqueue(i32 %32, i32 %35)
  %37 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(i32) #1

declare dso_local i32 @netif_stop_subqueue(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IXGBE_DESC_UNUSED(%struct.ixgbevf_ring*) #1

declare dso_local i32 @netif_start_subqueue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
