; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.bdx_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @bdx_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.bdx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bdx_priv* %10, %struct.bdx_priv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @bdx_rx_fifo_size_to_packets(i32 %15)
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %11

26:                                               ; preds = %21, %11
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 3, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @bdx_tx_fifo_size_to_packets(i32 %35)
  %37 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %31

46:                                               ; preds = %41, %31
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 3, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %53 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %59 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %93

63:                                               ; preds = %56, %50
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %66 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %73 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %78

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %77 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %81 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.bdx_priv*, %struct.bdx_priv** %6, align 8
  %83 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %82, i32 0, i32 3
  store i32 %79, i32* %83, align 4
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i64 @netif_running(%struct.net_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i32 @bdx_close(%struct.net_device* %88)
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @bdx_open(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %87, %78
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %62
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bdx_rx_fifo_size_to_packets(i32) #1

declare dso_local i64 @bdx_tx_fifo_size_to_packets(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bdx_close(%struct.net_device*) #1

declare dso_local i32 @bdx_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
