; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.enic = type { i32, i32 }
%struct.vnic_stats = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @enic_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @enic_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.enic*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.vnic_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.enic* @netdev_priv(%struct.net_device* %6)
  store %struct.enic* %7, %struct.enic** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  store %struct.net_device_stats* %9, %struct.net_device_stats** %4, align 8
  %10 = load %struct.enic*, %struct.enic** %3, align 8
  %11 = call i32 @enic_dev_stats_dump(%struct.enic* %10, %struct.vnic_stats** %5)
  %12 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %13 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %17 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %19 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %23 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %25 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %29 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %31 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %35 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %37 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %43 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %49 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %53 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %55 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.enic*, %struct.enic** %3, align 8
  %61 = getelementptr inbounds %struct.enic, %struct.enic* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.enic*, %struct.enic** %3, align 8
  %66 = getelementptr inbounds %struct.enic, %struct.enic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %71 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vnic_stats*, %struct.vnic_stats** %5, align 8
  %75 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %73, %77
  %79 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %80 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %81
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_dev_stats_dump(%struct.enic*, %struct.vnic_stats**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
