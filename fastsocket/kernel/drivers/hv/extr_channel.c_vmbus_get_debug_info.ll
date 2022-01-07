; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_get_debug_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_get_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.vmbus_channel = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vmbus_channel_debug_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.hv_monitor_page = type { %struct.TYPE_13__**, i32**, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@vmbus_connection = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_get_debug_info(%struct.vmbus_channel* %0, %struct.vmbus_channel_debug_info* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_channel_debug_info*, align 8
  %5 = alloca %struct.hv_monitor_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store %struct.vmbus_channel_debug_info* %1, %struct.vmbus_channel_debug_info** %4, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = sdiv i32 %12, 32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = srem i32 %18, 32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %21 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %27 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %30 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %32 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %31, i32 0, i32 10
  %33 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %34 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = call i32 @memcpy(i32* %32, i32* %36, i32 4)
  %38 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %39 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %38, i32 0, i32 9
  %40 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %41 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @memcpy(i32* %39, i32* %43, i32 4)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @vmbus_connection, i32 0, i32 0), align 8
  %46 = inttoptr i64 %45 to %struct.hv_monitor_page*
  store %struct.hv_monitor_page* %46, %struct.hv_monitor_page** %5, align 8
  %47 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %48 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %52 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %51, i32 0, i32 8
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %5, align 8
  %54 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %62 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %5, align 8
  %64 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %75 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %5, align 8
  %77 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %78, i64 %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %91 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %5, align 8
  %93 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %92, i32 1
  store %struct.hv_monitor_page* %93, %struct.hv_monitor_page** %5, align 8
  %94 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %5, align 8
  %95 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %103 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %5, align 8
  %105 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %116 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %5, align 8
  %118 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %119, i64 %121
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %132 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %134 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %133, i32 0, i32 1
  %135 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %136 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %135, i32 0, i32 1
  %137 = call i32 @hv_ringbuffer_get_debuginfo(i32* %134, i32* %136)
  %138 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %139 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %138, i32 0, i32 0
  %140 = load %struct.vmbus_channel_debug_info*, %struct.vmbus_channel_debug_info** %4, align 8
  %141 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %140, i32 0, i32 0
  %142 = call i32 @hv_ringbuffer_get_debuginfo(i32* %139, i32* %141)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hv_ringbuffer_get_debuginfo(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
