; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-quirks.c_usbhid_lookup_quirk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-quirks.c_usbhid_lookup_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_blacklist = type { i32 }

@USB_VENDOR_ID_NCR = common dso_local global i64 0, align 8
@USB_DEVICE_ID_NCR_FIRST = common dso_local global i64 0, align 8
@USB_DEVICE_ID_NCR_LAST = common dso_local global i64 0, align 8
@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4
@dquirks_rwsem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhid_lookup_quirk(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_blacklist*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.hid_blacklist* null, %struct.hid_blacklist** %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @USB_VENDOR_ID_NCR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @USB_DEVICE_ID_NCR_FIRST, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @USB_DEVICE_ID_NCR_LAST, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %15, %11, %2
  %22 = call i32 @down_read(i32* @dquirks_rwsem)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.hid_blacklist* @usbhid_exists_dquirk(i64 %23, i64 %24)
  store %struct.hid_blacklist* %25, %struct.hid_blacklist** %7, align 8
  %26 = load %struct.hid_blacklist*, %struct.hid_blacklist** %7, align 8
  %27 = icmp ne %struct.hid_blacklist* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.hid_blacklist* @usbhid_exists_squirk(i64 %29, i64 %30)
  store %struct.hid_blacklist* %31, %struct.hid_blacklist** %7, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.hid_blacklist*, %struct.hid_blacklist** %7, align 8
  %34 = icmp ne %struct.hid_blacklist* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.hid_blacklist*, %struct.hid_blacklist** %7, align 8
  %37 = getelementptr inbounds %struct.hid_blacklist, %struct.hid_blacklist* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = call i32 @up_read(i32* @dquirks_rwsem)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.hid_blacklist* @usbhid_exists_dquirk(i64, i64) #1

declare dso_local %struct.hid_blacklist* @usbhid_exists_squirk(i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
