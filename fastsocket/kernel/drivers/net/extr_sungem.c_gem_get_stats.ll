; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.gem = type { %struct.net_device_stats, i32, i32, i64, i64 }

@MAC_FCSERR = common dso_local global i64 0, align 8
@MAC_AERR = common dso_local global i64 0, align 8
@MAC_LERR = common dso_local global i64 0, align 8
@MAC_ECOLL = common dso_local global i64 0, align 8
@MAC_LCOLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @gem_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @gem_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gem*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.gem* @netdev_priv(%struct.net_device* %5)
  store %struct.gem* %6, %struct.gem** %3, align 8
  %7 = load %struct.gem*, %struct.gem** %3, align 8
  %8 = getelementptr inbounds %struct.gem, %struct.gem* %7, i32 0, i32 0
  store %struct.net_device_stats* %8, %struct.net_device_stats** %4, align 8
  %9 = load %struct.gem*, %struct.gem** %3, align 8
  %10 = getelementptr inbounds %struct.gem, %struct.gem* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.gem*, %struct.gem** %3, align 8
  %13 = getelementptr inbounds %struct.gem, %struct.gem* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.gem*, %struct.gem** %3, align 8
  %16 = getelementptr inbounds %struct.gem, %struct.gem* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %117

19:                                               ; preds = %1
  %20 = load %struct.gem*, %struct.gem** %3, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAC_FCSERR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @readl(i64 %24)
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.gem*, %struct.gem** %3, align 8
  %33 = getelementptr inbounds %struct.gem, %struct.gem* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAC_FCSERR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  %38 = load %struct.gem*, %struct.gem** %3, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAC_AERR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @readl(i64 %42)
  %44 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.gem*, %struct.gem** %3, align 8
  %51 = getelementptr inbounds %struct.gem, %struct.gem* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MAC_AERR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 0, i64 %54)
  %56 = load %struct.gem*, %struct.gem** %3, align 8
  %57 = getelementptr inbounds %struct.gem, %struct.gem* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MAC_LERR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i64 @readl(i64 %60)
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.gem*, %struct.gem** %3, align 8
  %69 = getelementptr inbounds %struct.gem, %struct.gem* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MAC_LERR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 0, i64 %72)
  %74 = load %struct.gem*, %struct.gem** %3, align 8
  %75 = getelementptr inbounds %struct.gem, %struct.gem* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MAC_ECOLL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @readl(i64 %78)
  %80 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %81 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.gem*, %struct.gem** %3, align 8
  %87 = getelementptr inbounds %struct.gem, %struct.gem* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MAC_ECOLL, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i64 @readl(i64 %90)
  %92 = load %struct.gem*, %struct.gem** %3, align 8
  %93 = getelementptr inbounds %struct.gem, %struct.gem* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MAC_LCOLL, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i64 @readl(i64 %96)
  %98 = add nsw i64 %91, %97
  %99 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %100 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.gem*, %struct.gem** %3, align 8
  %106 = getelementptr inbounds %struct.gem, %struct.gem* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MAC_ECOLL, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 0, i64 %109)
  %111 = load %struct.gem*, %struct.gem** %3, align 8
  %112 = getelementptr inbounds %struct.gem, %struct.gem* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MAC_LCOLL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 0, i64 %115)
  br label %117

117:                                              ; preds = %19, %1
  %118 = load %struct.gem*, %struct.gem** %3, align 8
  %119 = getelementptr inbounds %struct.gem, %struct.gem* %118, i32 0, i32 2
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load %struct.gem*, %struct.gem** %3, align 8
  %122 = getelementptr inbounds %struct.gem, %struct.gem* %121, i32 0, i32 1
  %123 = call i32 @spin_unlock_irq(i32* %122)
  %124 = load %struct.gem*, %struct.gem** %3, align 8
  %125 = getelementptr inbounds %struct.gem, %struct.gem* %124, i32 0, i32 0
  ret %struct.net_device_stats* %125
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
