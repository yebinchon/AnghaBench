; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_io_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_io_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32, i32, i32, i32, i64 }

@HID_DISCONNECTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@HID_RESET_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @hid_io_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_io_error(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 0
  %7 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  store %struct.usbhid_device* %7, %struct.usbhid_device** %4, align 8
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %9 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %8, i32 0, i32 1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @HID_DISCONNECTED, align 4
  %13 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %14 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %13, i32 0, i32 4
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %84

18:                                               ; preds = %1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %21 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i64 @time_after(i64 %19, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %31 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %18
  %33 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %34 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %39 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %38, i32 0, i32 0
  store i32 13, i32* %39, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = call i64 @msecs_to_jiffies(i32 1000)
  %42 = add nsw i64 %40, %41
  %43 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %44 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  br label %56

45:                                               ; preds = %32
  %46 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %47 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 100
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %52 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i64, i64* @jiffies, align 8
  %58 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %59 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @time_after(i64 %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* @HID_RESET_PENDING, align 4
  %65 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %66 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %65, i32 0, i32 4
  %67 = call i32 @test_and_set_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %71 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %70, i32 0, i32 3
  %72 = call i32 @schedule_work(i32* %71)
  br label %84

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %76 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %75, i32 0, i32 2
  %77 = load i64, i64* @jiffies, align 8
  %78 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %79 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @msecs_to_jiffies(i32 %80)
  %82 = add nsw i64 %77, %81
  %83 = call i32 @mod_timer(i32* %76, i64 %82)
  br label %84

84:                                               ; preds = %74, %69, %17
  %85 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %86 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %85, i32 0, i32 1
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
