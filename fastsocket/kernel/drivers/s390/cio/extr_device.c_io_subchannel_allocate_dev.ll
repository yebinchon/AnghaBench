; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_allocate_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_allocate_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i8* }
%struct.subchannel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccw_device* (%struct.subchannel*)* @io_subchannel_allocate_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccw_device* @io_subchannel_allocate_dev(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 8, i32 %5)
  %7 = bitcast i8* %6 to %struct.ccw_device*
  store %struct.ccw_device* %7, %struct.ccw_device** %4, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %9 = icmp ne %struct.ccw_device* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @GFP_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @kzalloc(i32 4, i32 %13)
  %15 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  store %struct.ccw_device* %22, %struct.ccw_device** %2, align 8
  br label %30

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %26 = call i32 @kfree(%struct.ccw_device* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ccw_device* @ERR_PTR(i32 %28)
  store %struct.ccw_device* %29, %struct.ccw_device** %2, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  ret %struct.ccw_device* %31
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ccw_device*) #1

declare dso_local %struct.ccw_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
