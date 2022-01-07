; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.port_stats = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @cxgb_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @cxgb_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port_stats, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.port_info* @netdev_priv(%struct.net_device* %7)
  store %struct.port_info* %8, %struct.port_info** %4, align 8
  %9 = load %struct.port_info*, %struct.port_info** %4, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 1
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = load %struct.port_info*, %struct.port_info** %4, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @t4_get_port_stats(%struct.adapter* %17, i32 %20, %struct.port_stats* %3)
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 19
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %28 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %27, i32 0, i32 17
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 18
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %32 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 17
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 16
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %40 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %39, i32 0, i32 14
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 15
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 14
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 13
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  %50 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 12
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %49, %51
  %53 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %54 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %56 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %55, i32 0, i32 12
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %60 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %59, i32 0, i32 11
  store i64 %58, i64* %60, align 8
  %61 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 10
  store i64 %62, i64* %64, align 8
  %65 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 11
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %66, %68
  %70 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %69, %71
  %73 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %72, %74
  %76 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %75, %77
  %79 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %81, %83
  %85 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %84, %86
  %88 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %89 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %91 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %90, i32 0, i32 9
  store i64 0, i64* %91, align 8
  %92 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %93 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %95 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %97 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %99 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %101 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %105 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %107, %109
  %111 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %112 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %3, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %114, %116
  %118 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %123 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  ret %struct.net_device_stats* %124
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_get_port_stats(%struct.adapter*, i32, %struct.port_stats*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
