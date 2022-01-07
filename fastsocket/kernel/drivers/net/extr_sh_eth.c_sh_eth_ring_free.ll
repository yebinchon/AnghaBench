; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_ring_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i64*, i64* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_ring_free(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %5)
  store %struct.sh_eth_private* %6, %struct.sh_eth_private** %3, align 8
  %7 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %8 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %35, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RX_RING_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %18 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %27 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dev_kfree_skb(i64 %32)
  br label %34

34:                                               ; preds = %25, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %12

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %41 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @kfree(i64* %42)
  %44 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %45 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %72, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TX_RING_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %55 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %64 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @dev_kfree_skb(i64 %69)
  br label %71

71:                                               ; preds = %62, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %49

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %39
  %77 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %78 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @kfree(i64* %79)
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
