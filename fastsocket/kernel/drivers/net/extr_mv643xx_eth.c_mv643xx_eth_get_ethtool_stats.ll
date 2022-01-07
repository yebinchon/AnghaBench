; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_stats = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.mv643xx_eth_private = type { i64 }

@mv643xx_eth_stats = common dso_local global %struct.mv643xx_eth_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @mv643xx_eth_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv643xx_eth_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mv643xx_eth_stats*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %11)
  store %struct.mv643xx_eth_private* %12, %struct.mv643xx_eth_private** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @mv643xx_eth_get_stats(%struct.net_device* %13)
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %16 = call i32 @mib_counters_update(%struct.mv643xx_eth_private* %15)
  %17 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %18 = call i32 @mv643xx_eth_grab_lro_stats(%struct.mv643xx_eth_private* %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %69, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** @mv643xx_eth_stats, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.mv643xx_eth_stats* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** @mv643xx_eth_stats, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %25, i64 %27
  store %struct.mv643xx_eth_stats* %28, %struct.mv643xx_eth_stats** %9, align 8
  %29 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %30 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %35 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %39 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr i8, i8* %37, i64 %40
  store i8* %41, i8** %10, align 8
  br label %50

42:                                               ; preds = %24
  %43 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %44 = bitcast %struct.mv643xx_eth_private* %43 to i8*
  %45 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %46 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %44, i64 %48
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %42, %33
  %51 = load %struct.mv643xx_eth_stats*, %struct.mv643xx_eth_stats** %9, align 8
  %52 = getelementptr inbounds %struct.mv643xx_eth_stats, %struct.mv643xx_eth_stats* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %57, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load i8*, i8** %10, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %58, %55 ], [ %62, %59 ]
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %19

72:                                               ; preds = %19
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mv643xx_eth_get_stats(%struct.net_device*) #1

declare dso_local i32 @mib_counters_update(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @mv643xx_eth_grab_lro_stats(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mv643xx_eth_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
