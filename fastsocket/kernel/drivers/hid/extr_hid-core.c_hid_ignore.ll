; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_ignore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i64, i32 }

@USB_DEVICE_ID_CODEMERCS_IOW_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_CODEMERCS_IOW_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LOGITECH_HARMONY_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LOGITECH_HARMONY_LAST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST = common dso_local global i32 0, align 4
@USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST = common dso_local global i32 0, align 4
@HID_TYPE_USBMOUSE = common dso_local global i64 0, align 8
@hid_mouse_ignore_list = common dso_local global i32 0, align 4
@hid_ignore_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hid_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_ignore(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %49 [
    i32 130, label %7
    i32 129, label %21
    i32 128, label %35
  ]

7:                                                ; preds = %1
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @USB_DEVICE_ID_CODEMERCS_IOW_FIRST, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @USB_DEVICE_ID_CODEMERCS_IOW_LAST, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %69

20:                                               ; preds = %13, %7
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @USB_DEVICE_ID_LOGITECH_HARMONY_FIRST, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @USB_DEVICE_ID_LOGITECH_HARMONY_LAST, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %69

34:                                               ; preds = %27, %21
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %37 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %43 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %69

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %1, %48, %34, %20
  %50 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %51 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HID_TYPE_USBMOUSE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %57 = load i32, i32* @hid_mouse_ignore_list, align 4
  %58 = call i64 @hid_match_id(%struct.hid_device* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %69

61:                                               ; preds = %55, %49
  %62 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %63 = load i32, i32* @hid_ignore_list, align 4
  %64 = call i64 @hid_match_id(%struct.hid_device* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %61, %60, %47, %33, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @hid_match_id(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
