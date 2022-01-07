; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpmac_priv = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpmac_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.cpmac_priv* %6, %struct.cpmac_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %11 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_tx_start_all_queues(%struct.net_device* %17)
  %19 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %20 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %25 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  %29 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %30 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %35 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %28, %16
  %37 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %38 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %43 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  %47 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %48 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %53 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %36
  %55 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %56 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  %60 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %61 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %54
  br label %76

63:                                               ; preds = %1
  %64 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %65 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  %69 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %70 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %72 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %74 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  br label %75

75:                                               ; preds = %68, %63
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %81 = call i64 @netif_msg_link(%struct.cpmac_priv* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = call i64 (...) @net_ratelimit()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %88 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = call i32 @phy_print_status(%struct.TYPE_2__* %89)
  br label %91

91:                                               ; preds = %86, %83, %79, %76
  %92 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %93 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %92, i32 0, i32 3
  %94 = call i32 @spin_unlock(i32* %93)
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.cpmac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @phy_print_status(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
