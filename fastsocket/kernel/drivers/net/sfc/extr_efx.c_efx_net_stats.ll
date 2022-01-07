; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_net_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_net_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.efx_nic = type { i32, i32, %struct.TYPE_2__*, %struct.efx_mac_stats }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }
%struct.efx_mac_stats = type { i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @efx_net_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @efx_net_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_mac_stats*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %6)
  store %struct.efx_nic* %7, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 3
  store %struct.efx_mac_stats* %9, %struct.efx_mac_stats** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %5, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %18, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = call i32 %19(%struct.efx_nic* %20)
  %22 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %23 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %26 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 8
  %27 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %28 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 4
  %32 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %33 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %38 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 8
  %47 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %48 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %53 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %56 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %58 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %61 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %67 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %70 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %72 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %77 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %80 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %82 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %85 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %87 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %90 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %92 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %95 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %99 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %103 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %107 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %106, i32 0, i32 5
  store i64 %105, i64* %107, align 8
  %108 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %109 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.efx_mac_stats*, %struct.efx_mac_stats** %4, align 8
  %112 = getelementptr inbounds %struct.efx_mac_stats, %struct.efx_mac_stats* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %116 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %118 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  ret %struct.net_device_stats* %120
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
