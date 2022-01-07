; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_hv_vmbus_get_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_hv_vmbus_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_vmbus_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hv_vmbus_device_id* (%struct.hv_vmbus_device_id*, i32*)* @hv_vmbus_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hv_vmbus_device_id* @hv_vmbus_get_id(%struct.hv_vmbus_device_id* %0, i32* %1) #0 {
  %3 = alloca %struct.hv_vmbus_device_id*, align 8
  %4 = alloca %struct.hv_vmbus_device_id*, align 8
  %5 = alloca i32*, align 8
  store %struct.hv_vmbus_device_id* %0, %struct.hv_vmbus_device_id** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.hv_vmbus_device_id, %struct.hv_vmbus_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @is_null_guid(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %25

13:                                               ; preds = %6
  %14 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.hv_vmbus_device_id, %struct.hv_vmbus_device_id* %14, i32 0, i32 0
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @memcmp(i32* %15, i32* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  store %struct.hv_vmbus_device_id* %20, %struct.hv_vmbus_device_id** %3, align 8
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.hv_vmbus_device_id, %struct.hv_vmbus_device_id* %23, i32 1
  store %struct.hv_vmbus_device_id* %24, %struct.hv_vmbus_device_id** %4, align 8
  br label %6

25:                                               ; preds = %6
  store %struct.hv_vmbus_device_id* null, %struct.hv_vmbus_device_id** %3, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %3, align 8
  ret %struct.hv_vmbus_device_id* %27
}

declare dso_local i32 @is_null_guid(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
