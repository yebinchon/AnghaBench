; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_create_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { %struct.raw3270* }
%struct.ccw_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raw3270* (%struct.ccw_device*)* @raw3270_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raw3270* @raw3270_create_device(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.raw3270*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @kmalloc(i32 8, i32 %9)
  %11 = bitcast i8* %10 to %struct.raw3270*
  store %struct.raw3270* %11, %struct.raw3270** %4, align 8
  %12 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %13 = icmp ne %struct.raw3270* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.raw3270* @ERR_PTR(i32 %16)
  store %struct.raw3270* %17, %struct.raw3270** %2, align 8
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 256, i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %25 = call i32 @kfree(%struct.raw3270* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.raw3270* @ERR_PTR(i32 %27)
  store %struct.raw3270* %28, %struct.raw3270** %2, align 8
  br label %50

29:                                               ; preds = %18
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @raw3270_setup_device(%struct.ccw_device* %30, %struct.raw3270* %31, i8* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %38 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %37, i32 0, i32 0
  %39 = load %struct.raw3270*, %struct.raw3270** %38, align 8
  %40 = call i32 @kfree(%struct.raw3270* %39)
  %41 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %42 = call i32 @kfree(%struct.raw3270* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.raw3270* @ERR_PTR(i32 %43)
  store %struct.raw3270* %44, %struct.raw3270** %4, align 8
  br label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %47 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %46, i32 0, i32 0
  %48 = call i32 @get_device(i32* %47)
  %49 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  store %struct.raw3270* %49, %struct.raw3270** %2, align 8
  br label %50

50:                                               ; preds = %45, %23, %14
  %51 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  ret %struct.raw3270* %51
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.raw3270* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.raw3270*) #1

declare dso_local i32 @raw3270_setup_device(%struct.ccw_device*, %struct.raw3270*, i8*) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
