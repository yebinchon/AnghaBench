; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_allocate_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hid_device_release = common dso_local global i32 0, align 4
@hid_bus_type = common dso_local global i32 0, align 4
@HID_DEFAULT_NUM_COLLECTIONS = common dso_local global i32 0, align 4
@HID_REPORT_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hid_device* @hid_allocate_device() #0 {
  %1 = alloca %struct.hid_device*, align 8
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hid_device* @kzalloc(i32 48, i32 %7)
  store %struct.hid_device* %8, %struct.hid_device** %2, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %10 = icmp eq %struct.hid_device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.hid_device* @ERR_PTR(i32 %12)
  store %struct.hid_device* %13, %struct.hid_device** %1, align 8
  br label %69

14:                                               ; preds = %0
  %15 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = call i32 @device_initialize(%struct.TYPE_5__* %16)
  %18 = load i32, i32* @hid_device_release, align 4
  %19 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32* @hid_bus_type, i32** %24, align 8
  %25 = load i32, i32* @HID_DEFAULT_NUM_COLLECTIONS, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kcalloc(i32 %25, i32 4, i32 %26)
  %28 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %63

35:                                               ; preds = %14
  %36 = load i32, i32* @HID_DEFAULT_NUM_COLLECTIONS, align 4
  %37 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %52, %35
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @HID_REPORT_TYPES, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 2
  %58 = call i32 @init_waitqueue_head(i32* %57)
  %59 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %60 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %59, i32 0, i32 1
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  store %struct.hid_device* %62, %struct.hid_device** %1, align 8
  br label %69

63:                                               ; preds = %34
  %64 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %65 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %64, i32 0, i32 0
  %66 = call i32 @put_device(%struct.TYPE_5__* %65)
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.hid_device* @ERR_PTR(i32 %67)
  store %struct.hid_device* %68, %struct.hid_device** %1, align 8
  br label %69

69:                                               ; preds = %63, %55, %11
  %70 = load %struct.hid_device*, %struct.hid_device** %1, align 8
  ret %struct.hid_device* %70
}

declare dso_local %struct.hid_device* @kzalloc(i32, i32) #1

declare dso_local %struct.hid_device* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
