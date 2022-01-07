; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_get_channel_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_get_channel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_device_info = type { %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.vmbus_channel_debug_info = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.hv_device_info*)* @get_channel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_channel_info(%struct.hv_device* %0, %struct.hv_device_info* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_device_info*, align 8
  %5 = alloca %struct.vmbus_channel_debug_info, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.hv_device_info* %1, %struct.hv_device_info** %4, align 8
  %6 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %7 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %120

11:                                               ; preds = %2
  %12 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %13 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vmbus_get_debug_info(i32 %14, %struct.vmbus_channel_debug_info* %5)
  %16 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %19 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %23 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 10
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 4)
  %28 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %29 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 9
  %31 = call i32 @memcpy(i32* %29, i32* %30, i32 4)
  %32 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %35 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %39 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %43 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %47 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %51 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %55 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %59 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %64 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %70 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %76 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %82 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %88 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %94 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %100 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  %102 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %106 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  %108 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %112 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = getelementptr inbounds %struct.vmbus_channel_debug_info, %struct.vmbus_channel_debug_info* %5, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hv_device_info*, %struct.hv_device_info** %4, align 8
  %118 = getelementptr inbounds %struct.hv_device_info, %struct.hv_device_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @vmbus_get_debug_info(i32, %struct.vmbus_channel_debug_info*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
