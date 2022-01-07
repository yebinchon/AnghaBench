; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.b44 = type { %struct.b44_hw_stats }
%struct.b44_hw_stats = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @b44_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @b44_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.b44*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.b44_hw_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.b44* @netdev_priv(%struct.net_device* %6)
  store %struct.b44* %7, %struct.b44** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  store %struct.net_device_stats* %9, %struct.net_device_stats** %4, align 8
  %10 = load %struct.b44*, %struct.b44** %3, align 8
  %11 = getelementptr inbounds %struct.b44, %struct.b44* %10, i32 0, i32 0
  store %struct.b44_hw_stats* %11, %struct.b44_hw_stats** %5, align 8
  %12 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %13 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %12, i32 0, i32 19
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %16 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %15, i32 0, i32 13
  store i32 %14, i32* %16, align 4
  %17 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %18 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 8
  %22 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %23 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %26 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %28 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 8
  %32 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %33 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %32, i32 0, i32 15
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %36 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %35, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %40 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %44 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %48 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 9
  store i64 %50, i64* %52, align 8
  %53 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %54 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %59 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %64 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %67 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 6
  store i64 %69, i64* %71, align 8
  %72 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %73 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %76 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %75, i32 0, i32 5
  store i64 %74, i64* %76, align 8
  %77 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %78 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %81 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %83 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %86 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %88 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %91 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %95 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %99 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %103 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %107 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %111 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %115 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.b44_hw_stats*, %struct.b44_hw_stats** %5, align 8
  %121 = getelementptr inbounds %struct.b44_hw_stats, %struct.b44_hw_stats* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %124 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %125
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
