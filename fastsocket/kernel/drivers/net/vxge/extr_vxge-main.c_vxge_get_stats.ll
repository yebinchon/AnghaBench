; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.vxgedev = type { i32, %struct.TYPE_12__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.net_device_stats }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @vxge_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @vxge_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.vxgedev* @netdev_priv(%struct.net_device* %6)
  store %struct.vxgedev* %7, %struct.vxgedev** %3, align 8
  %8 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %9 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %4, align 8
  %11 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %12 = call i32 @memset(%struct.net_device_stats* %11, i32 0, i32 32)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %148, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %16 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %151

19:                                               ; preds = %13
  %20 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %21 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %37 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %53 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %69 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %85 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %95 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %101 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %111 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %117 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %127 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %133 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %132, i32 0, i32 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %143 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  br label %148

148:                                              ; preds = %19
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %13

151:                                              ; preds = %13
  %152 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %152
}

declare dso_local %struct.vxgedev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.net_device_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
